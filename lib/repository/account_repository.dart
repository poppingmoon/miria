import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/account_settings.dart';
import 'package:miria/model/acct.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/error_dialog_handler.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

class AccountRepository extends Notifier<List<Account>> {
  final _validatedAccts = <Acct>{};
  final _validateMetaAccts = <Acct>{};
  String _sessionId = "";

  @override
  List<Account> build() {
    return [];
  }

  Future<void> load() async {
    const prefs = FlutterSecureStorage();
    final storedData = await prefs.read(key: "accounts");
    if (storedData == null) {
      return;
    }
    try {
      state = (jsonDecode(storedData) as List)
          .map((e) => Account.fromJson(e as Map<String, dynamic>))
          .toList();
      _validatedAccts.clear();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> loadFromSourceIfNeed(Acct acct) async {
    final index = state.indexWhere((e) => e.acct == acct);
    if (index < 0) return;
    final account = state[index];
    final setting =
        ref.read(accountSettingsRepositoryProvider).fromAccount(account);

    Future<void> updateI() async {
      _validatedAccts.add(acct);

      final i = await ref.read(misskeyProvider(account)).i.i();
      ref
          .read(accountSettingsRepositoryProvider)
          .save(setting.copyWith(latestICached: DateTime.now()));

      final accounts = List.of(state);
      accounts[index] = account.copyWith(i: i);
      state = accounts;
    }

    switch (setting.iCacheStrategy) {
      case CacheStrategy.whenLaunch:
        if (!_validatedAccts.contains(acct)) updateI();
      case CacheStrategy.whenOneDay:
        final latestUpdated = setting.latestICached;
        if (latestUpdated == null || latestUpdated.day != DateTime.now().day) {
          updateI();
        }
      case CacheStrategy.whenTabChange:
        updateI();
    }
    ref
        .read(notesProvider(account))
        .updateMute(account.i.mutedWords, account.i.hardMutedWords);

    Future<void> updateMeta() async {
      _validateMetaAccts.add(acct);

      final meta = await ref.read(misskeyProvider(account)).meta();
      ref
          .read(accountSettingsRepositoryProvider)
          .save(setting.copyWith(latestMetaCached: DateTime.now()));

      final accounts = List.of(state);
      accounts[index] = account.copyWith(meta: meta);
      state = accounts;
    }

    switch (setting.metaChacheStrategy) {
      case CacheStrategy.whenLaunch:
        if (!_validatedAccts.contains(acct)) updateMeta();
      case CacheStrategy.whenOneDay:
        final latestUpdated = setting.latestMetaCached;
        if (latestUpdated == null || latestUpdated.day != DateTime.now().day) {
          updateMeta();
        }
      case CacheStrategy.whenTabChange:
        updateMeta();
    }

    await _save();
  }

  Future<void> createUnreadAnnouncement(
    Account account,
    AnnouncementsResponse announcement,
  ) async {
    final index = state.indexOf(account);
    final i = state[index].i.copyWith(
      unreadAnnouncements: [
        ...state[index].i.unreadAnnouncements,
        announcement,
      ],
    );

    final accounts = List.of(state);
    accounts[index] = account.copyWith(i: i);
    state = accounts;
  }

  Future<void> removeUnreadAnnouncement(Account account) async {
    final index = state.indexOf(account);
    final i = state[index].i.copyWith(
      unreadAnnouncements: [],
    );

    final accounts = List.of(state);
    accounts[index] = account.copyWith(i: i);
    state = accounts;
  }

  Future<void> remove(Account account) async {
    state = state.where((e) => e != account).toList();
    _validatedAccts.remove(account.acct);
    await ref.read(tabSettingsRepositoryProvider).removeAccount(account);
    await ref.read(accountSettingsRepositoryProvider).removeAccount(account);
    await _save();
  }

  Future<void> _validateMisskey(String server) async {
    //先にnodeInfoを取得する
    final Response<Map<String, dynamic>> nodeInfo;

    final Uri uri;
    try {
      uri = Uri(
        scheme: "https",
        host: server,
        pathSegments: [".well-known", "nodeinfo"],
      );
    } catch (e) {
      throw SpecifiedException(
        "$server はサーバーとして認識できませんでした。\nサーバーには、「misskey.io」などを入力してください。",
      );
    }

    try {
      nodeInfo = await ref.read(dioProvider).getUri(uri);
    } catch (e) {
      throw SpecifiedException("$server はMisskeyサーバーとして認識できませんでした。");
    }
    final links = nodeInfo.data!["links"] as List;
    final link = links.first as Map<String, dynamic>;
    final nodeInfoHref = link["href"] as String;
    final nodeInfoHrefResponse =
        await ref.read(dioProvider).get<Map<String, dynamic>>(nodeInfoHref);
    final nodeInfoResult = nodeInfoHrefResponse.data;

    final software = nodeInfoResult!["software"] as Map<String, dynamic>;
    final name = software["name"];
    // these software already known as unavailable this app
    if (name == "mastodon" || name == "fedibird") {
      throw SpecifiedException("Miriaは$nameに未対応です。");
    }

    final version = software["version"];

    try {
      final meta = await ref.read(misskeyWithoutAccountProvider(server)).meta();

      final endpoints = await ref
          .read(misskeyProvider(Account.demoAccount(server, meta)))
          .endpoints();
      if (!endpoints.contains("emojis")) {
        throw SpecifiedException("Miriaと互換性のないソフトウェアです。\n$software $version");
      }
    } catch (e) {
      throw SpecifiedException("Miriaと互換性のないソフトウェアです。\n$software $version");
    }
  }

  Future<void> loginAsPassword(
    String server,
    String userId,
    String password,
  ) async {
    final token =
        await MisskeyServer().loginAsPassword(server, userId, password);
    final i = await Misskey(token: token, host: server).i.i();
    final meta = await Misskey(token: token, host: server).meta();
    final account =
        Account(host: server, token: token, userId: userId, i: i, meta: meta);
    _addAccount(account);
  }

  Future<void> loginAsToken(String server, String token) async {
    await _validateMisskey(server);
    final misskey = Misskey(token: token, host: server);
    final i = await misskey.i.i();
    final meta = await misskey.meta();
    _addAccount(
      Account(
        host: server,
        userId: i.username,
        token: token,
        i: i,
        meta: meta,
      ),
    );
  }

  Future<void> openMiAuth(String server) async {
    await _validateMisskey(server);

    _sessionId = const Uuid().v4();
    await launchUrl(
      MisskeyServer().buildMiAuthURL(
        server,
        _sessionId,
        name: "Miria",
        permission: Permission.values,
      ),
      mode: LaunchMode.externalApplication,
    );
  }

  Future<void> validateMiAuth(String server) async {
    final token = await MisskeyServer().checkMiAuthToken(server, _sessionId);
    final misskey = Misskey(token: token, host: server);
    final i = await misskey.i.i();
    final meta = await misskey.meta();
    await _addAccount(
      Account(host: server, userId: i.username, token: token, i: i, meta: meta),
    );
  }

  Future<void> _addAccount(Account account) async {
    if (state.map((e) => e.acct).contains(account.acct)) {
      throw SpecifiedException("${account.acct}で既にログインしています");
    }

    state = [...state, account];
    _validatedAccts.add(account.acct);
    await ref.read(emojiRepositoryProvider(account)).loadFromSourceIfNeed();

    await _save();
    await _addIfTabSettingNothing();
  }

  Future<void> reorder(int oldIndex, int newIndex) async {
    if (oldIndex < newIndex) {
      // ignore: parameter_assignments
      newIndex -= 1;
    }
    final newState = state.toList();
    final item = newState.removeAt(oldIndex);
    newState.insert(newIndex, item);
    state = newState;

    await _save();
  }

  Future<void> _save() async {
    const prefs = FlutterSecureStorage();
    await prefs.write(
      key: "accounts",
      value: jsonEncode(state.map((e) => e.toJson()).toList()),
    );
  }

  Future<void> _addIfTabSettingNothing() async {
    if (state.length == 1) {
      final account = state.first;
      ref
          .read(tabSettingsRepositoryProvider)
          .initializeTabSettings(account.acct);
    }
  }
}
