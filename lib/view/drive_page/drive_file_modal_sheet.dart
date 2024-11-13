import "package:auto_route/auto_route.dart";
import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:miria/extensions/date_time_extension.dart";
import "package:miria/model/image_file.dart";
import "package:miria/providers.dart";
import "package:miria/router/app_router.dart";
import "package:miria/state_notifier/drive_page/drive_files_notifier.dart";
import "package:miria/view/common/dialog/dialog_state.dart";
import "package:miria/view/dialogs/simple_confirm_dialog.dart";
import "package:miria/view/note_create_page/file_settings_dialog.dart";
import "package:miria/view/note_create_page/thumbnail.dart";
import "package:misskey_dart/misskey_dart.dart";

@RoutePage()
class DriveFileModalSheet extends ConsumerWidget {
  const DriveFileModalSheet({required this.file, super.key});

  final DriveFile file;

  Future<void> _editFile(WidgetRef ref) async {
    final result = await showDialog<FileSettingsDialogResult>(
      context: ref.context,
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
    await ref.read(dialogStateNotifierProvider.notifier).guard(
          () => ref
              .read(driveFilesNotifierProvider(file.folderId).notifier)
              .updateFile(
                fileId: file.id,
                name: result.fileName,
                isSensitive: result.isNsfw,
                comment: result.caption,
              ),
        );
    if (!ref.context.mounted) return;
    await ref.context.maybePop();
  }

  Future<void> _editImage(WidgetRef ref) async {
    final response = await ref.read(dioProvider).get<Uint8List>(
          file.url,
          options: Options(responseType: ResponseType.bytes),
        );
    final initialImage = response.data;
    if (initialImage == null) return;
    if (!ref.context.mounted) return;
    await ref.context.pushRoute(
      PhotoEditRoute(
        accountContext: ref.read(accountContextProvider),
        file: ImageFileAlreadyPostedFile(
          data: initialImage,
          id: file.id,
          fileName: file.name,
        ),
        onSubmit: (image) =>
            ref.read(dialogStateNotifierProvider.notifier).guard(
                  () => ref
                      .read(driveFilesNotifierProvider(file.folderId).notifier)
                      .uploadBinary(
                        image,
                        name: file.name,
                        comment: file.comment,
                        isSensitive: file.isSensitive,
                      ),
                ),
      ),
    );
    if (!ref.context.mounted) return;
    await ref.context.maybePop();
  }

  Future<void> _delete(WidgetRef ref) async {
    final result = await SimpleConfirmDialog.show(
      context: ref.context,
      message: S.of(ref.context).confirmDeleteFile,
      primary: S.of(ref.context).willDelete,
      secondary: S.of(ref.context).cancel,
    );
    if (result ?? false) {
      final result = await ref.read(dialogStateNotifierProvider.notifier).guard(
            () => ref
                .read(driveFilesNotifierProvider(file.folderId).notifier)
                .delete(file.id),
          );
      if (result.hasError) return;
      if (!ref.context.mounted) return;
      ScaffoldMessenger.of(ref.context).showSnackBar(
        SnackBar(
          content: Text(S.of(ref.context).deleted),
          duration: const Duration(seconds: 1),
        ),
      );
      await ref.context.maybePop();
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
          subtitle: Text(file.createdAt.formatUntilSeconds(context)),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: Text(S.of(context).editFile),
          onTap: () async => await _editFile(ref),
        ),
        if (defaultTargetPlatform
            case TargetPlatform.android ||
                TargetPlatform.iOS ||
                TargetPlatform.macOS when file.type.startsWith("image/"))
          ListTile(
            leading: const Icon(Icons.crop),
            title: Text(S.of(context).editImage),
            onTap: () async => await _editImage(ref),
          ),
        ListTile(
          leading: const Icon(Icons.link),
          title: Text(S.of(context).copyLinks),
          onTap: () async {
            await Clipboard.setData(ClipboardData(text: file.url));
            if (!context.mounted) return;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(S.of(context).doneCopy),
                duration: const Duration(seconds: 1),
              ),
            );
            await ref.context.maybePop();
          },
        ),
        ListTile(
          leading: const Icon(Icons.delete),
          title: Text(S.of(context).delete),
          onTap: () async => await _delete(ref),
          iconColor: Theme.of(context).colorScheme.error,
          textColor: Theme.of(context).colorScheme.error,
        ),
      ],
    );
  }
}
