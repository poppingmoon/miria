import 'dart:async';
import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/extensions/date_time_extension.dart';
import 'package:miria/model/tab_setting.dart';
import 'package:miria/model/tab_type.dart';
import 'package:miria/model/timeline_state.dart';
import 'package:miria/providers.dart';
import 'package:misskey_dart/misskey_dart.dart';

class SubscribeItem {
  final String noteId;
  final String? renoteId;
  final String? replyId;
  final bool isUnsubscribed;

  const SubscribeItem({
    required this.noteId,
    required this.renoteId,
    required this.replyId,
    this.isUnsubscribed = false,
  });

  Iterable<String> get ids {
    return [noteId, renoteId, replyId].nonNulls;
  }

  bool contains(String id) {
    return ids.contains(id);
  }
}

class TimelineRepository extends FamilyNotifier<TimelineState, TabSetting> {
  List<SubscribeItem> _subscribedList = [];
  late SocketController _socketController;

  @override
  TimelineState build(TabSetting arg) {
    final timer = Timer.periodic(
      const Duration(seconds: 10),
      (_) => _checkUnsubscribed(),
    );
    Future(() {
      startTimeline();
    });
    ref.onDispose(() {
      timer.cancel();
      disconnect();
    });
    return const TimelineState();
  }

  TabSetting get _tabSetting => arg;

  SocketController _createSocketController({
    required void Function(Note note) onNoteReceived,
    required FutureOr<void> Function(String id, TimelineReacted reaction)
        onReacted,
    required FutureOr<void> Function(String id, TimelineVoted vote) onVoted,
  }) {
    final misskey = ref.read(misskeyProvider(_tabSetting.account));

    return switch (_tabSetting.tabType) {
      TabType.localTimeline => misskey.localTimelineStream(
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onVoted: onVoted,
        ),
      TabType.homeTimeline => misskey.homeTimelineStream(
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onVoted: onVoted,
        ),
      TabType.globalTimeline => misskey.globalTimelineStream(
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onVoted: onVoted,
        ),
      TabType.hybridTimeline => misskey.hybridTimelineStream(
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onVoted: onVoted,
        ),
      TabType.channel => misskey.channelStream(
          channelId: _tabSetting.channelId!,
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onVoted: onVoted,
        ),
      TabType.userList => misskey.userListStream(
          listId: _tabSetting.listId!,
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onVoted: onVoted,
        ),
      TabType.antenna => misskey.antennaStream(
          antennaId: _tabSetting.antennaId!,
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onVoted: onVoted,
        ),
    };
  }

  Future<Iterable<Note>> _requestNotes({
    int limit = 30,
    String? untilId,
  }) {
    final misskey = ref.read(misskeyProvider(_tabSetting.account));

    return switch (_tabSetting.tabType) {
      TabType.localTimeline => misskey.notes.localTimeline(
          NotesLocalTimelineRequest(
            limit: limit,
            untilId: untilId,
          ),
        ),
      TabType.homeTimeline => misskey.notes.homeTimeline(
          NotesTimelineRequest(
            limit: limit,
            untilId: untilId,
          ),
        ),
      TabType.globalTimeline => misskey.notes.globalTimeline(
          NotesGlobalTimelineRequest(
            limit: limit,
            untilId: untilId,
          ),
        ),
      TabType.hybridTimeline => misskey.notes.hybridTimeline(
          NotesHybridTimelineRequest(
            limit: limit,
            untilId: untilId,
          ),
        ),
      TabType.channel => misskey.channels.timeline(
          ChannelsTimelineRequest(
            channelId: _tabSetting.channelId!,
            limit: limit,
            untilId: untilId,
          ),
        ),
      TabType.userList => misskey.notes.userListTimeline(
          UserListTimelineRequest(
            listId: _tabSetting.listId!,
            limit: limit,
            untilId: untilId,
          ),
        ),
      TabType.antenna => misskey.antennas.notes(
          AntennasNotesRequest(
            antennaId: _tabSetting.antennaId!,
            limit: limit,
            untilId: untilId,
          ),
        ),
    };
  }

  Future<void> startTimeline() async {
    state = state.copyWith(
      isLoading: true,
      isDownDirectionLoading: false,
      isLastLoaded: false,
      error: null,
    );

    final account = _tabSetting.account;
    final noteRepository = ref.read(notesProvider(account));

    try {
      ref.read(mainStreamRepositoryProvider(account)).reconnect();
      await Future.wait([
        ref.read(emojiRepositoryProvider(account)).loadFromSourceIfNeed(),
        ref.read(accountRepository).loadFromSourceIfNeed(account),
        if (state.olderNotes.isEmpty)
          downDirectionLoad()
        else
          _reloadLatestNotes(),
      ]);
    } catch (e) {
      state = state.copyWith(error: e);
    } finally {
      state = state.copyWith(isLoading: false);
    }

    _socketController = _createSocketController(
      onNoteReceived: (note) {
        noteRepository.registerNote(note);
        state = state.copyWith(newerNotes: [...state.newerNotes, note]);
      },
      onReacted: (id, reaction) {
        noteRepository.addReaction(id, reaction);
      },
      onVoted: (id, vote) {
        noteRepository.addVote(id, vote);
      },
    );
    ref.read(misskeyProvider(account)).startStreaming();
  }

  Future<void> downDirectionLoad() async {
    if (state.isDownDirectionLoading) return;
    state = state.copyWith(isDownDirectionLoading: true);
    try {
      final notes = await _requestNotes(untilId: state.oldestNote?.id);
      ref.read(notesProvider(_tabSetting.account)).registerAll(notes);
      state = state.copyWith(
        olderNotes: [...state.olderNotes, ...notes],
        isLastLoaded: notes.isEmpty,
      );
    } finally {
      state = state.copyWith(isDownDirectionLoading: false);
    }
  }

  Future<void> _reloadLatestNotes() async {
    _moveToOlder();

    final notes = await _requestNotes();
    if (notes.isEmpty) {
      return;
    }

    ref.read(notesProvider(_tabSetting.account)).registerAll(notes);

    if (state.olderNotes.isEmpty ||
        state.olderNotes.first.createdAt < notes.last.createdAt) {
      state = state.copyWith(olderNotes: notes.toList());
    } else {
      state = state.copyWith(
        olderNotes: [
          ...notes.where(
            (note) => (state.olderNotes.first.createdAt < note.createdAt),
          ),
          ...state.olderNotes,
        ],
      );
    }
  }

  void disconnect() {
    _socketController.disconnect();
  }

  void reconnect() {
    try {
      _socketController.reconnect();
    } catch (e) {
      startTimeline();
      return;
    }
    ref.read(mainStreamRepositoryProvider(_tabSetting.account)).reconnect();
    _reloadLatestNotes();
  }

  void _moveToOlder() {
    state = state.copyWith(
      newerNotes: [],
      olderNotes: [...state.newerNotes.reversed, ...state.olderNotes],
    );
  }

  /// [_subscribedList] に含まれる全てのidの集合を返す
  Set<String> _subscribedIds() {
    return _subscribedList
        .fold(<String>[], (acc, item) => [...acc, ...item.ids]).toSet();
  }

  void subscribe({
    required String noteId,
    String? renoteId,
    String? replyId,
  }) {
    if (!_tabSetting.isSubscribe) return;

    final item = SubscribeItem(
      noteId: noteId,
      renoteId: renoteId,
      replyId: replyId,
    );
    final subscribedIds = _subscribedIds();

    final index =
        _subscribedList.indexWhere((element) => element.noteId == noteId);
    if (index == -1) {
      _subscribedList.add(item);
      if (!subscribedIds.contains(noteId)) {
        _socketController.subNote(noteId);
      }
    } else {
      _subscribedList[index] = item;
    }

    if (renoteId != null) {
      if (!subscribedIds.contains(renoteId)) {
        _socketController.subNote(renoteId);
      }
    }

    if (replyId != null) {
      if (!subscribedIds.contains(replyId)) {
        _socketController.subNote(replyId);
      }
    }
  }

  void _checkUnsubscribed() {
    final group = _subscribedList.groupListsBy(
      (item) => item.isUnsubscribed,
    );
    final unsubscribedList = group[true] ?? [];
    _subscribedList = group[false] ?? [];
    final subscribedIds = _subscribedIds();

    for (final unsubscribedItem in unsubscribedList) {
      final noteId = unsubscribedItem.noteId;
      final renoteId = unsubscribedItem.renoteId;
      final replyId = unsubscribedItem.replyId;

      if (!subscribedIds.contains(noteId)) {
        _unsubscribe(noteId);
      }

      if (renoteId != null) {
        if (!subscribedIds.contains(renoteId)) {
          _unsubscribe(renoteId);
        }
      }

      if (replyId != null) {
        if (_subscribedList.every((item) => !item.contains(replyId))) {
          _unsubscribe(replyId);
        }
      }
    }
  }

  void preserveUnsubscribe(String id) {
    final index = _subscribedList.indexWhere((element) => element.noteId == id);
    if (index == -1) {
      // already unsubscribed?
      return;
    }
    final item = _subscribedList[index];

    _subscribedList[index] = SubscribeItem(
      noteId: item.noteId,
      renoteId: item.renoteId,
      replyId: item.replyId,
      isUnsubscribed: true,
    );
  }

  void _unsubscribe(String id) {
    _socketController.unsubNote(id);
  }
}
