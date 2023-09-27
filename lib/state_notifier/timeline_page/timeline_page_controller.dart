import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/timeline_page_state.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/timeline_page/timeline_note.dart';
import 'package:misskey_dart/misskey_dart.dart';

class TimelinePageController extends AutoDisposeNotifier<TimelinePageState> {
  @override
  TimelinePageState build() {
    final pageController = PageController();
    final tabSetting =
        ref.watch(tabSettingsRepositoryProvider).tabSettings.first;
    ref.onDispose(() {
      pageController.dispose();
    });
    return TimelinePageState(
      pageController: pageController,
      index: 0,
      tabSetting: tabSetting,
    );
  }

  void changePage(int index) {
    final tabSetting =
        ref.read(tabSettingsRepositoryProvider).tabSettings.elementAt(index);
    state = state.copyWith(index: index, tabSetting: tabSetting);
  }

  void forceScrollToTop() {
    ref
        .read(timelineControllerProvider(state.tabSetting).notifier)
        .forceScrollToTop();
  }

  Future<void> reconnect() async {
    await ref
        .read(timelineRepositoryProvider(state.tabSetting).notifier)
        .reconnect();
    forceScrollToTop();
  }

  Future<void> note() async {
    final text = ref.read(timelineNoteProvider).value.text;
    if (text.isEmpty) return;
    try {
      final accountSettings = ref
          .read(accountSettingsRepositoryProvider)
          .fromAccount(state.tabSetting.account);
      ref.read(timelineNoteProvider).clear();
      FocusManager.instance.primaryFocus?.unfocus();

      await ref.read(misskeyProvider(state.tabSetting.account)).notes.create(
            NotesCreateRequest(
              text: text,
              channelId: state.tabSetting.channelId,
              visibility: accountSettings.defaultNoteVisibility,
              localOnly: state.tabSetting.channelId != null ||
                  accountSettings.defaultIsLocalOnly,
              reactionAcceptance: accountSettings.defaultReactionAcceptance,
            ),
          );
    } catch (e) {
      ref.read(timelineNoteProvider).text = text;
      rethrow;
    }
  }

  void noteCreateRoute(BuildContext context) {
    CommunityChannel? channel;
    final channelId = state.tabSetting.channelId;
    if (channelId != null) {
      final timeline = ref.read(timelineRepositoryProvider(state.tabSetting));
      final channelName = timeline.oldestNote?.channel?.name;

      channel = CommunityChannel(
        id: channelId,
        createdAt: DateTime.now(),
        name: channelName ?? channelId,
        pinnedNoteIds: [],
        usersCount: 0,
        notesCount: 0,
        isFollowing: false,
        isFavorited: false,
        hasUnreadNote: false,
        pinnedNotes: [],
      );
    }
    final sendText = ref.read(timelineNoteProvider).text;
    ref.read(timelineNoteProvider).text = "";
    context.pushRoute(
      NoteCreateRoute(
        channel: channel,
        initialText: sendText,
        initialAccount: state.tabSetting.account,
      ),
    );
  }
}
