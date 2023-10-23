import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:misskey_dart/misskey_dart.dart';

class DriveFolderGridItem extends ConsumerWidget {
  const DriveFolderGridItem({
    super.key,
    required this.account,
    required this.folder,
  });

  final Account account;
  final DriveFolder folder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: InkWell(
        onTap: () =>
            ref.watch(breadcrumbsNotifierProvider.notifier).push(folder),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.folder),
            ),
            Expanded(
              child: Center(
                child: Text(
                  folder.name,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
