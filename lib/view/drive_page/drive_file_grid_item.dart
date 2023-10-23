import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/drive_page/drive_file_modal_sheet.dart';
import 'package:miria/view/note_create_page/thumbnail.dart';
import 'package:misskey_dart/misskey_dart.dart';

class DriveFileGridItem extends ConsumerWidget {
  const DriveFileGridItem({
    super.key,
    required this.account,
    required this.file,
  });

  final Account account;
  final DriveFile file;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: InkWell(
        onTap: () => context.pushRoute(
          DriveFileRoute(
            account: account,
            file: file,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Thumbnail.driveFile(file, fit: BoxFit.cover),
            ),
            Row(
              children: [
                Visibility.maintain(
                  visible: file.isSensitive,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Tooltip(
                      message: "センシティブ",
                      child: Icon(Icons.warning_amber),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      file.name,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => DriveFileModalSheet(
                      account: account,
                      file: file,
                    ),
                  ),
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
