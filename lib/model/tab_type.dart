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
}
