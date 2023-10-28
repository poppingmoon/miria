import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/extensions/date_time_extension.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/image_file.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/common/error_dialog_handler.dart';
import 'package:miria/view/dialogs/simple_confirm_dialog.dart';
import 'package:miria/view/drive_page/drive_folder_select_dialog.dart';
import 'package:miria/view/note_create_page/file_settings_dialog.dart';
import 'package:miria/view/note_create_page/thumbnail.dart';
import 'package:misskey_dart/misskey_dart.dart';

class DriveFileModalSheet extends ConsumerWidget {
  const DriveFileModalSheet({
    super.key,
    required this.account,
    required this.file,
  });

  final Account account;
  final DriveFile file;

  Future<void> editFile(WidgetRef ref) async {
    final context = ref.context;
    final misskey = ref.read(misskeyProvider(account));
    final result = await showDialog<FileSettingsDialogResult>(
      context: context,
      builder: (context) => FileSettingsDialog(
        file: UnknownAlreadyPostedFile(
          url: file.url,
          id: file.id,
          fileName: file.name,
          isNsfw: file.isSensitive,
          caption: file.comment,
        ),
      ),
    );
    if (result == null ||
        (result.fileName == file.name &&
            result.isNsfw == file.isSensitive &&
            result.caption == file.comment)) return;
    ref
        .read(
          driveFilesNotifierProvider((misskey, file.folderId)).notifier,
        )
        .updateFile(
          fileId: file.id,
          name: result.fileName,
          isSensitive: result.isNsfw,
          comment: result.caption,
        );
  }

  Future<void> editImage(WidgetRef ref) async {
    final context = ref.context;
    final misskey = ref.read(misskeyProvider(account));
    final response = await ref.read(dioProvider).get<Uint8List>(
          file.url,
          options: Options(responseType: ResponseType.bytes),
        );
    final initialImage = response.data;
    if (initialImage == null) return;
    if (!context.mounted) return;
    await context.pushRoute(
      PhotoEditRoute(
        account: account,
        file: ImageFileAlreadyPostedFile(
          data: initialImage,
          id: file.id,
          fileName: file.name,
        ),
        onSubmit: (image) => ref
            .read(
              driveFilesNotifierProvider((misskey, file.folderId)).notifier,
            )
            .uploadAsBinary(
              image,
              name: file.name,
              comment: file.comment,
              isSensitive: file.isSensitive,
            ),
      ),
    );
  }

  Future<void> download(WidgetRef ref) async {
    final context = ref.context;
    await ref.read(downloadFileNotifierProvider.notifier).downloadFile(file);
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("ファイルを保存しました")),
    );
    Navigator.of(context).pop();
  }

  Future<void> move(WidgetRef ref) async {
    final context = ref.context;
    final misskey = ref.read(misskeyProvider(account));
    final result = await showDialog<(DriveFolder?,)>(
      context: context,
      builder: (context) => DriveFolderSelectDialog(account: account),
    );
    if (result == null) return;
    await ref
        .read(driveFilesNotifierProvider((misskey, file.folderId)).notifier)
        .move(
          fileId: file.id,
          folderId: result.$1?.id,
        );
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("移動しました")),
    );
    Navigator.of(context).pop();
  }

  Future<void> delete(WidgetRef ref) async {
    final context = ref.context;
    final misskey = ref.read(misskeyProvider(account));
    final result = await SimpleConfirmDialog.show(
      context: context,
      message: "このファイルを削除しますか？",
      primary: "削除する",
      secondary: "やめる",
    );
    if (result ?? false) {
      await ref
          .read(
            driveFilesNotifierProvider((misskey, file.folderId)).notifier,
          )
          .delete(file.id);
      ref.read(drivePageNotifierProvider.notifier).deselectFile(file);
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("削除しました")),
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: AspectRatio(
            aspectRatio: 1,
            child: Thumbnail.driveFile(file),
          ),
          title: Text(file.name),
          subtitle: Text(file.createdAt.formatUntilSeconds),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("ファイルを編集"),
          onTap: () => editFile(ref).expectFailure(context),
        ),
        if (file.type.startsWith("image") &&
            (Platform.isAndroid || Platform.isIOS))
          ListTile(
            leading: const Icon(Icons.crop),
            title: const Text("画像を編集"),
            onTap: () => editImage(ref).expectFailure(context),
          ),
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text("このファイルからノートを作成"),
          onTap: () => context.pushRoute(
            NoteCreateRoute(
              initialAccount: account,
              initialDriveFiles: [file],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.link),
          title: const Text("URLをコピー"),
          onTap: () {
            Clipboard.setData(ClipboardData(text: file.url));
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("コピーしました")),
            );
            Navigator.of(context).pop();
          },
        ),
        if (Platform.isAndroid || Platform.isIOS)
          ListTile(
            leading: const Icon(Icons.download),
            title: const Text("ダウンロード"),
            onTap: () => download(ref).expectFailure(context),
          ),
        ListTile(
          leading: const Icon(Icons.drive_file_move),
          title: const Text("移動"),
          onTap: () => move(ref).expectFailure(context),
        ),
        ListTile(
          leading: const Icon(Icons.delete),
          title: const Text("削除"),
          onTap: () => delete(ref).expectFailure(context),
        ),
      ],
    );
  }
}
