import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/tab_icon.dart';
import 'package:miria/model/tab_setting.dart';
import 'package:miria/model/tab_type.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TabSettingsRepository extends ChangeNotifier {
  List<TabSetting> _tabSettings = [];

  Iterable<TabSetting> get tabSettings => _tabSettings;

  TabSettingsRepository();

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final storedData = prefs.getString("tab_settings");
    if (storedData == null || storedData.isEmpty) {
      return;
    }
    try {
      _tabSettings
        ..clear()
        ..addAll(
          (jsonDecode(storedData) as List)
              .map((e) => TabSetting.fromJson(e as Map<String, dynamic>)),
        );
    } catch (e) {
      if (kDebugMode) print(e);
    }
  }

  void updateAccount(Account account, IResponse response) {
    for (var i = 0; i < _tabSettings.length; i++) {
      if (_tabSettings[i].account == account) {
        _tabSettings[i] = _tabSettings[i]
            .copyWith(account: _tabSettings[i].account.copyWith(i: response));
      }
    }
    notifyListeners();
  }

  Future<void> save(List<TabSetting> tabSettings) async {
    _tabSettings = tabSettings.toList();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      "tab_settings",
      jsonEncode(_tabSettings.map((e) => e.toJson()).toList()),
    );
    notifyListeners();
  }

  Future<void> removeAccount(Account account) async {
    _tabSettings.removeWhere(
      (element) =>
          element.account.host == account.host &&
          element.account.userId == account.userId,
    );
    await save(_tabSettings);
    notifyListeners();
  }

  Future<void> initializeTabSettings(Account account) async {
    await save([
      TabSetting(
        icon: TabIcon(codePoint: Icons.home.codePoint),
        tabType: TabType.homeTimeline,
        name: "ホームタイムライン",
        account: account,
      ),
      TabSetting(
        icon: TabIcon(codePoint: Icons.public.codePoint),
        tabType: TabType.localTimeline,
        name: "ローカルタイムライン",
        account: account,
      ),
      TabSetting(
        icon: TabIcon(codePoint: Icons.rocket_launch.codePoint),
        tabType: TabType.globalTimeline,
        name: "グローバルタイムライン",
        account: account,
      ),
    ]);
  }
}
