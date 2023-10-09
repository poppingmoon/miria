import 'dart:async';
import 'dart:collection';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/extensions/date_time_extension.dart';
import 'package:miria/extensions/note_extension.dart';
import 'package:miria/model/tab_setting.dart';
import 'package:miria/model/tab_type.dart';
import 'package:miria/model/timeline_state.dart';
import 'package:miria/providers.dart';
import 'package:misskey_dart/misskey_dart.dart';

class TimelineRepository extends FamilyNotifier<TimelineState, TabSetting> {
  /// ノートのidとそのノートを現在参照しているノートの数の対応
  final HashMap<String, int> _subscriptionCount = HashMap();

  late SocketController _socketController;

  @override
  TimelineState build(TabSetting arg) {
    final timer = _tabSetting.isSubscribe
        ? Timer.periodic(
            const Duration(seconds: 10),
            (_) => _checkUnsubscribed(),
          )
        : null;
    Future(() {
      startTimeline();
    });
    ref.onDispose(() {
      disconnect();
      timer?.cancel();
    });
    return const TimelineState();
  }

  TabSetting get _tabSetting => arg;

  SocketController _createSocketController({
    required void Function(Note note) onNoteReceived,
    required FutureOr<void> Function(String id, TimelineReacted reaction)
        onReacted,
    required FutureOr<void> Function(String id, TimelineReacted reaction)
        onUnreacted,
    required FutureOr<void> Function(String id, TimelineVoted vote) onVoted,
    required FutureOr<void> Function(String id, NoteEdited note) onUpdated,
  }) {
    final misskey = ref.read(misskeyProvider(_tabSetting.account));

    return switch (_tabSetting.tabType) {
      TabType.localTimeline => misskey.localTimelineStream(
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onUnreacted: onUnreacted,
          onVoted: onVoted,
          onUpdated: onUpdated,
        ),
      TabType.homeTimeline => misskey.homeTimelineStream(
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onUnreacted: onUnreacted,
          onVoted: onVoted,
          onUpdated: onUpdated,
        ),
      TabType.globalTimeline => misskey.globalTimelineStream(
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onUnreacted: onUnreacted,
          onVoted: onVoted,
          onUpdated: onUpdated,
        ),
      TabType.hybridTimeline => misskey.hybridTimelineStream(
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onUnreacted: onUnreacted,
          onVoted: onVoted,
          onUpdated: onUpdated,
        ),
      TabType.roleTimeline => misskey.roleTimelineStream(
          roleId: _tabSetting.roleId!,
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onUnreacted: onUnreacted,
          onVoted: onVoted,
          // TODO: misskey_dartを修正
          // onUpdated: onUpdated,
        ),
      TabType.channel => misskey.channelStream(
          channelId: _tabSetting.channelId!,
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onVoted: onVoted,
          onUpdated: onUpdated,
        ),
      TabType.userList => misskey.userListStream(
          listId: _tabSetting.listId!,
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onUnreacted: onUnreacted,
          onVoted: onVoted,
          onUpdated: onUpdated,
        ),
      TabType.antenna => misskey.antennaStream(
          antennaId: _tabSetting.antennaId!,
          onNoteReceived: onNoteReceived,
          onReacted: onReacted,
          onUnreacted: onUnreacted,
          onVoted: onVoted,
          onUpdated: onUpdated,
        ),
    };
  }

  Future<Iterable<Note>> _requestNotes({
    int? limit,
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
            limit: limit ?? 30,
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
      TabType.roleTimeline => misskey.roles.notes(
          RolesNotesRequest(
            roleId: _tabSetting.roleId!,
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

  Future<void> startTimeline({bool restart = false}) async {
    if (state.isLoading) {
      return;
    }
    state = state.copyWith(
      isLoading: true,
      isDownDirectionLoading: false,
      isLastLoaded: false,
      error: null,
    );

    final account = _tabSetting.account;
    final noteRepository = ref.read(notesProvider(account));
    final misskey = ref.read(misskeyProvider(account));

    try {
      if (restart) {
        misskey.streamingService.close();
      }
      _socketController = _createSocketController(
        onNoteReceived: (note) {
          noteRepository.registerNote(note);
          state = state.copyWith(newerNotes: [...state.newerNotes, note]);
        },
        onReacted: (id, reaction) {
          final registeredNote = noteRepository.notes[id];
          if (registeredNote == null) return;

          final reactions = Map.of(registeredNote.reactions);
          reactions[reaction.reaction] =
              (reactions[reaction.reaction] ?? 0) + 1;
          final emoji = reaction.emoji;
          final reactionEmojis = Map.of(registeredNote.reactionEmojis);
          if (emoji != null && !reaction.reaction.endsWith("@.:")) {
            reactionEmojis[emoji.name] = emoji.url;
          }

          noteRepository.registerNote(
            registeredNote.copyWith(
              reactions: reactions,
              reactionEmojis: reactionEmojis,
              myReaction: reaction.userId == account.i.id
                  ? (emoji?.name != null ? ":${emoji?.name}:" : null)
                  : registeredNote.myReaction,
            ),
          );
        },
        onUnreacted: (id, reaction) {
          final registeredNote = noteRepository.notes[id];
          if (registeredNote == null) return;

          final reactions = Map.of(registeredNote.reactions);
          final reactionCount = reactions[reaction.reaction];
          if (reactionCount == null) {
            return;
          }
          if (reactionCount <= 1) {
            reactions.remove(reaction.reaction);
          } else {
            reactions[reaction.reaction] = reactionCount - 1;
          }

          noteRepository.registerNote(
            registeredNote.copyWith(
              reactions: reactions,
              // https://github.com/rrousselGit/freezed/issues/906
              myReaction: reaction.userId == account.i.id
                  ? ""
                  : registeredNote.myReaction,
            ),
          );
        },
        onVoted: noteRepository.addVote,
        onUpdated: noteRepository.updateNote,
      );
      await Future.wait([
        ref.read(mainStreamRepositoryProvider(account)).reconnect(),
        ref.read(emojiRepositoryProvider(account)).loadFromSourceIfNeed(),
        ref.read(accountRepository).loadFromSourceIfNeed(account),
        if (state.olderNotes.isEmpty)
          downDirectionLoad()
        else
          _reloadLatestNotes(),
      ]);
      await misskey.startStreaming();
    } catch (e, st) {
      state = state.copyWith(error: (e, st));
    } finally {
      state = state.copyWith(isLoading: false);
    }
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

  void _moveToOlder() {
    state = state.copyWith(
      newerNotes: [],
      olderNotes: [...state.newerNotes.reversed, ...state.olderNotes],
    );
  }

  void subscribe(Note note) {
    if (!_tabSetting.isSubscribe) return;

    final renoteId = note.renoteId;
    final replyId = note.replyId;

    if (!note.isEmptyRenote) {
      _subscribe(note.id);
    }
    if (renoteId != null) {
      _subscribe(renoteId);
    }
    if (replyId != null) {
      _subscribe(replyId);
    }
  }

  void _subscribe(String id) {
    _subscriptionCount.update(
      id,
      (count) => count + 1,
      ifAbsent: () {
        _socketController.subNote(id);
        return 1;
      },
    );
  }

  void preserveUnsubscribe(Note note) {
    if (!_tabSetting.isSubscribe) return;

    final renoteId = note.renoteId;
    final replyId = note.replyId;

    if (!note.isEmptyRenote) {
      _subscriptionCount.update(
        note.id,
        (count) => count - 1,
        ifAbsent: () => 0,
      );
    }
    if (renoteId != null) {
      _subscriptionCount.update(
        renoteId,
        (count) => count - 1,
        ifAbsent: () => 0,
      );
    }
    if (replyId != null) {
      _subscriptionCount.update(
        replyId,
        (count) => count - 1,
        ifAbsent: () => 0,
      );
    }
  }

  void _checkUnsubscribed() {
    _subscriptionCount.forEach((id, count) {
      if (count < 1) {
        _unsubscribe(id);
      }
    });
    _subscriptionCount.removeWhere((id, count) => count < 1);
  }

  void _unsubscribe(String id) {
    _socketController.unsubNote(id);
  }
}
