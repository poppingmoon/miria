import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/drive_page/drive_file_modal_sheet.dart';
import 'package:miria/view/drive_page/drive_file_page/drive_file_details.dart';
import 'package:miria/view/drive_page/drive_file_page/drive_file_notes.dart';
import 'package:misskey_dart/misskey_dart.dart';

@RoutePage()
class DriveFilePage extends ConsumerWidget {
  const DriveFilePage({
    super.key,
    required this.account,
    required this.file,
  });

  final Account account;
  final DriveFile file;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final misskey = ref.watch(misskeyProvider(account));
    final file = ref.watch(
          driveFilesNotifierProvider((misskey, this.file.folderId)).select(
            (files) => files.firstWhereOrNull((e) => e.id == this.file.id),
          ),
        ) ??
        this.file;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ファイルの詳細"),
          actions: [
            IconButton(
              onPressed: () async {
                await showModalBottomSheet<void>(
                  context: context,
                  builder: (context) => DriveFileModalSheet(
                    account: account,
                    file: file,
                  ),
                );
                final misskey = ref.read(misskeyProvider(account));
                final siblings = ref
                    .read(driveFilesNotifierProvider((misskey, file.folderId)));
                // ファイルが削除されたらpopする
                if (siblings.every((e) => e.id != file.id)) {
                  ref.read(breadcrumbsNotifierProvider.notifier).pop();
                }
              },
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info), text: "情報"),
              Tab(icon: Icon(Icons.edit), text: "添付されているノート"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DriveFileDetails(account: account, file: file),
            DriveFileNotes(account: account, file: file),
          ],
        ),
      ),
    );
  }
}
