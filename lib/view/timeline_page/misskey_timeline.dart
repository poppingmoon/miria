import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/general_settings.dart';
import 'package:miria/model/tab_setting.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/error_detail.dart';
import 'package:miria/view/common/error_dialog_handler.dart';
import 'package:miria/view/timeline_page/note_wrapper.dart';

class MisskeyTimeline extends ConsumerWidget {
  MisskeyTimeline({super.key, required this.tabSetting});

  final TabSetting tabSetting;
  final centerKey = UniqueKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeline = ref.watch(timelineRepositoryProvider(tabSetting));
    final controller = ref.watch(timelineControllerProvider(tabSetting));

    return Column(
      children: [
        if (timeline.isLoading)
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(child: CircularProgressIndicator()),
          ),
        if (timeline.error != null) ErrorDetail(error: timeline.error!),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomScrollView(
              center: centerKey,
              controller: controller.scrollController,
              slivers: [
                SliverAnimatedList(
                  key: controller.listKey,
                  initialItemCount: timeline.newerNotes.length,
                  itemBuilder: (context, index, animation) {
                    return SizeTransition(
                      sizeFactor: animation,
                      child: NoteWrapper(
                        targetNote: timeline.newerNotes[index],
                        tabSetting: tabSetting,
                      ),
                    );
                  },
                ),
                SliverList.builder(
                  key: centerKey,
                  itemCount: timeline.olderNotes.length + 1,
                  itemBuilder: (context, index) {
                    if (index == timeline.olderNotes.length) {
                      return TimelineButtomItem(tabSetting: tabSetting);
                    }
                    return NoteWrapper(
                      targetNote: timeline.olderNotes[index],
                      tabSetting: tabSetting,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TimelineButtomItem extends ConsumerWidget {
  const TimelineButtomItem({super.key, required this.tabSetting});

  final TabSetting tabSetting;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeline = ref.watch(timelineRepositoryProvider(tabSetting));
    if (timeline.isLastLoaded) {
      return Container();
    }

    if (timeline.isDownDirectionLoading) {
      if (timeline.newerNotes.isNotEmpty || timeline.olderNotes.isNotEmpty) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Center(child: CircularProgressIndicator()),
        );
      } else {
        return Container();
      }
    }

    if (ref.read(generalSettingsRepositoryProvider).settings.automaticPush ==
        AutomaticPush.automatic) {
      Future(() {
        ref
            .read(timelineRepositoryProvider(tabSetting).notifier)
            .downDirectionLoad();
      });
    }

    return Center(
      child: IconButton(
        onPressed: ref
            .read(timelineRepositoryProvider(tabSetting).notifier)
            .downDirectionLoad
            .expectFailure(context),
        icon: const Icon(Icons.keyboard_arrow_down),
      ),
    );
  }
}
