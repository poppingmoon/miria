import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/general_settings.dart';
import 'package:miria/model/tab_setting.dart';
import 'package:miria/model/tab_type.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/channel_dialog.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/common_drawer.dart';
import 'package:miria/view/common/error_dialog_handler.dart';
import 'package:miria/view/common/misskey_notes/network_image.dart';
import 'package:miria/view/common/notification_icon.dart';
import 'package:miria/view/common/tab_icon_view.dart';
import 'package:miria/view/server_detail_dialog.dart';
import 'package:miria/view/themes/app_theme.dart';
import 'package:miria/view/timeline_page/misskey_timeline.dart';
import 'package:miria/view/timeline_page/timeline_emoji.dart';
import 'package:miria/view/timeline_page/timeline_note.dart';

class TimelineAppBar extends ConsumerWidget {
  const TimelineAppBar({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabSettings = ref.watch(
      tabSettingsRepositoryProvider.select((repo) => repo.tabSettings.toList()),
    );
    final page = ref.watch(timelinePageControllerProvider);

    return AppBar(
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: tabSettings
              .mapIndexed(
                (index, tabSetting) => Builder(
                  builder: (context) {
                    final isCurrentTab = tabSetting == page.tabSetting;

                    return Ink(
                      color: isCurrentTab
                          ? AppTheme.of(context).currentDisplayTabColor
                          : Colors.transparent,
                      child: AccountScope(
                        account: tabSetting.account,
                        child: IconButton(
                          icon: TabIconView(
                            icon: tabSetting.icon,
                            color: isCurrentTab
                                ? Theme.of(context).primaryColor
                                : Colors.white,
                          ),
                          onPressed: () => isCurrentTab
                              ? ref
                                  .read(timelinePageControllerProvider.notifier)
                                  .forceScrollToTop()
                              : page.pageController.jumpToPage(index),
                        ),
                      ),
                    );
                  },
                ),
              )
              .toList(),
        ),
      ),
      actions: [
        AccountScope(
          account: page.tabSetting.account,
          child: const NotificationIcon(),
        ),
      ],
      leading: IconButton(
        onPressed: () => scaffoldKey.currentState?.openDrawer(),
        icon: const Icon(Icons.menu),
      ),
    );
  }
}

class TabHeader extends ConsumerWidget {
  const TabHeader({super.key, required this.tabSetting});

  final TabSetting tabSetting;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5,
                top: 5,
                bottom: 5,
              ),
              child: Text(tabSetting.name),
            ),
          ),
          const SizedBox(
            height: 24,
            child: NetworkImageView(
              url:
                  "https://nos3.arkjp.net/image.webp?url=https%3A%2F%2Fs3.arkjp.net%2Fmisskey%2Fc8a26f2b-7541-4fc6-bebb-036482b53cec.gif&emoji=1",
              type: ImageType.customEmoji,
            ),
          ),
          if (tabSetting.tabType == TabType.channel)
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => ChannelDialog(
                    channelId: tabSetting.channelId ?? "",
                    account: tabSetting.account,
                  ),
                );
              },
              icon: const Icon(Icons.info_outline),
            )
          else if ([
            TabType.hybridTimeline,
            TabType.localTimeline,
            TabType.globalTimeline,
            TabType.homeTimeline,
          ].contains(tabSetting.tabType))
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => ServerDetailDialog(
                    account: tabSetting.account,
                  ),
                );
              },
              icon: const Icon(Icons.smart_toy_outlined),
            ),
          const Padding(
            padding: EdgeInsets.only(right: 5),
          ),
          IconButton(
            onPressed:
                ref.read(timelinePageControllerProvider.notifier).reconnect,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class TimelinePage extends ConsumerWidget {
  TimelinePage({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  void noteCreateRoute() {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabSettings = ref.watch(
      tabSettingsRepositoryProvider.select((repo) => repo.tabSettings.toList()),
    );
    final page = ref.watch(timelinePageControllerProvider);
    final controller = ref.watch(timelinePageControllerProvider.notifier);
    final tabPosition = ref.watch(
      generalSettingsRepositoryProvider.select(
        (repo) => repo.settings.tabPosition,
      ),
    );

    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          children: [
            if (tabPosition == TabPosition.top)
              TimelineAppBar(scaffoldKey: scaffoldKey),
            TabHeader(tabSetting: page.tabSetting),
            Expanded(
              child: PageView.builder(
                controller: page.pageController,
                itemCount: tabSettings.length,
                onPageChanged: (index) => controller.changePage(index),
                itemBuilder: (_, index) {
                  final tabSetting = tabSettings[index];
                  return AccountScope(
                    account: tabSetting.account,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: MisskeyTimeline(tabSetting: tabSetting),
                        ),
                        const TimelineEmoji(),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              // decoration: filteringInputEmoji.isEmpty
              //     ? BoxDecoration(
              //         border: Border(
              //             top: BorderSide(
              //                 color: Theme.of(context).primaryColor)))
              //     : null,
              child: Row(
                children: [
                  const Expanded(
                    child: TimelineNoteField(),
                  ),
                  IconButton(
                    onPressed: ref
                        .read(timelinePageControllerProvider.notifier)
                        .note
                        .expectFailure(context),
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () => ref
                        .read(timelinePageControllerProvider.notifier)
                        .noteCreateRoute(context),
                    icon: const Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),
            if (tabPosition == TabPosition.bottom &&
                !ref.watch(timelineFocusNode).hasFocus)
              TimelineAppBar(scaffoldKey: scaffoldKey),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
      drawerEnableOpenDragGesture: true,
      drawer: CommonDrawer(
        initialOpenAccount: page.tabSetting.account,
      ),
    );
  }
}
