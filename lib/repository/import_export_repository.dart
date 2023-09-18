import 'dart:convert';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/account_settings.dart';
import 'package:miria/model/exported_setting.dart';
import 'package:miria/model/general_settings.dart';
import 'package:miria/model/tab_setting.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/dialogs/simple_confirm_dialog.dart';
import 'package:miria/view/dialogs/simple_message_dialog.dart';
import 'package:miria/view/settings_page/import_export_page/folder_select_dialog.dart';
import 'package:misskey_dart/misskey_dart.dart';

class ImportExportRepository extends ChangeNotifier {
  final T Function<T>(ProviderListenable<T> provider) reader;

  ImportExportRepository(this.reader);

  Future<void> import(BuildContext context, Account account) async {
    final result = await showDialog<FolderResult>(
      context: context,
      builder: (context2) => FolderSelectDialog(
        account: account,
        fileShowTarget: "miria.json.unknown",
        confirmationText: "このフォルダーからインポートする",
      ),
    );
    if (result == null) return;

    final folder = result.folder;

    final alreadyExists =
        await reader(misskeyProvider(account)).drive.files.find(
              DriveFilesFindRequest(
                name: "miria.json.unknown",
                folderId: folder?.id,
              ),
            );

    if (!context.mounted) return;
    if (alreadyExists.isEmpty) {
      await SimpleMessageDialog.show(context, "ここにMiriaの設定ファイルあれへんかったわ");
      return;
    }

    final importFile = alreadyExists.first;

    final response = await reader(dioProvider).get<String>(
      importFile.url,
      options: Options(responseType: ResponseType.json),
    );

    final json = jsonDecode(response.data!) as Map<String, dynamic>;

    final importedGeneralSettings = GeneralSettings.fromJson(
      json["generalSettings"] as Map<String, dynamic>,
    );
    final importedAccountSettings = (json["accountSettings"] as List)
        .map((e) => AccountSettings.fromJson(e as Map<String, dynamic>));

    // アカウント設定よみこみ
    final accounts = reader(accountRepositoryProvider);
    for (final accountSetting in importedAccountSettings) {
      // この端末でログイン済みのアカウントであれば
      if (accounts.any(
        (element) =>
            element.host == accountSetting.host &&
            element.userId == accountSetting.userId,
      )) {
        reader(accountSettingsRepositoryProvider).save(accountSetting);
      }
    }

    // 全般設定
    reader(generalSettingsRepositoryProvider).update(importedGeneralSettings);

    // タブ設定
    final tabSettings = <TabSetting>[];

    for (final e in json["tabSettings"] as List) {
      final tabSetting = e as Map<String, dynamic>;
      final account = accounts.firstWhereOrNull(
        (element) {
          final account = tabSetting["account"] as Map<String, dynamic>;
          return account["host"] == element.host &&
              account["userId"] == element.userId;
        },
      );

      if (account == null) {
        continue;
      }

      // Unhandled Exception: type 'EqualUnmodifiableMapView<dynamic, dynamic>' is not a subtype of type 'Map<String, dynamic>?' in type cast
      // freezedがわるさしてそう
      tabSetting
        ..remove("account")
        ..addEntries(
          [MapEntry("account", jsonDecode(jsonEncode(account.toJson())))],
        );

      tabSettings.add(TabSetting.fromJson(tabSetting));
    }
    reader(tabSettingsRepositoryProvider).save(tabSettings);

    if (!context.mounted) return;
    await SimpleMessageDialog.show(context, "インポート終わったで。");

    if (!context.mounted) return;
    context.router
      ..removeWhere((route) => true)
      ..push(const SplashRoute());
  }

  Future<void> export(BuildContext context, Account account) async {
    final result = await showDialog<FolderResult>(
      context: context,
      builder: (context2) => FolderSelectDialog(
        account: account,
        fileShowTarget: "miria.json.unknown",
        confirmationText: "このフォルダーに保存する",
      ),
    );
    if (result == null) return;

    final folder = result.folder;

    final alreadyExists =
        await reader(misskeyProvider(account)).drive.files.find(
              DriveFilesFindRequest(
                name: "miria.json.unknown",
                folderId: folder?.id,
              ),
            );

    if (!context.mounted) return;
    if (alreadyExists.isNotEmpty) {
      final alreadyConfirm = await SimpleConfirmDialog.show(
        context: context,
        message: "ここにもうあるけど上書きするか？",
        primary: "上書きする",
        secondary: "やっぱやめた",
      );
      if (alreadyConfirm != true) return;

      for (final element in alreadyExists) {
        await reader(misskeyProvider(account))
            .drive
            .files
            .delete(DriveFilesDeleteRequest(fileId: element.id));
      }
    }

    final data = ExportedSetting(
      generalSettings: reader(generalSettingsRepositoryProvider).settings,
      tabSettings: reader(tabSettingsRepositoryProvider).tabSettings.toList(),
      accountSettings:
          reader(accountSettingsRepositoryProvider).accountSettings.toList(),
    ).toJson();

    // 外に漏れると困るので
    for (final element in data["tabSettings"] as List) {
      // ignore: avoid_dynamic_calls
      element["account"]
        ..remove("token")
        ..remove("i");
    }

    await reader(misskeyProvider(account)).drive.files.createAsBinary(
          DriveFilesCreateRequest(
            folderId: folder?.id,
            name: "miria.json",
            comment: "Miria設定ファイル",
            force: true,
          ),
          Uint8List.fromList(utf8.encode(jsonEncode(data))),
        );

    if (!context.mounted) return;
    await SimpleMessageDialog.show(context, "エクスポート終わったで");
  }
}
