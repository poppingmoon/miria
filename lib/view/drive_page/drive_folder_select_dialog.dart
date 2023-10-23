import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/state_notifier/drive_page/breadcrumbs_notifier.dart';
import 'package:miria/view/drive_page/drive_page.dart';

class DriveFolderSelectDialog extends StatelessWidget {
  const DriveFolderSelectDialog({
    super.key,
    required this.account,
  });

  final Account account;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        breadcrumbsNotifierProvider.overrideWith(BreadcrumbsNotifier.new),
      ],
      child: Dialog(
        child: DrivePage(
          account: account,
          title: const Text("フォルダを選択"),
          floatingActionButtonBuilder: (context, folder) {
            return FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).pop((folder,));
              },
              label: const Text("選択"),
              icon: const Icon(Icons.check),
            );
          },
        ),
      ),
    );
  }
}
