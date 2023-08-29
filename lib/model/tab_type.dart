import 'package:miria/model/tab_setting.dart';
import 'package:miria/providers.dart';
import 'package:miria/repository/timeline_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum TabType {
  localTimeline("ローカルタイムライン"),
  homeTimeline("ホームタイムライン"),
  globalTimeline("グローバルタイムライン"),
  hybridTimeline("ソーシャルタイムライン"),
  channel("チャンネル"),
  userList("リスト"),
  antenna("アンテナ"),
  ;

  final String displayName;
  const TabType(this.displayName);

  ChangeNotifierProvider<TimelineRepository> timelineProvider(
      TabSetting setting) {
    switch (this) {
      case TabType.localTimeline:
        return localTimelineProvider(setting);
      case TabType.homeTimeline:
        return homeTimelineProvider(setting);
      case TabType.globalTimeline:
        return globalTimelineProvider(setting);
      case TabType.hybridTimeline:
        return hybridTimelineProvider(setting); //FIXME
      case TabType.channel:
        return channelTimelineProvider(setting);
      case TabType.userList:
        return userListTimelineProvider(setting);
      case TabType.antenna:
        return antennaTimelineProvider(setting);
    }
  }
}
