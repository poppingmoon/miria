import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/state_notifier/drive_page/drive_page_notifier.dart';
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
        drivePageNotifierProvider.overrideWith(DrivePageNotifier.new),
      ],
      child: Dialog(
        child: DrivePage(
          account: account,
          title: const Text("フォルダを選択"),
          floatingActionButtonBuilder: (context) =>
              const DriveFolderSelectDialogFloatingActionButton(),
        ),
      ),
    );
  }
}

class DriveFolderSelectDialogFloatingActionButton extends ConsumerWidget {
  const DriveFolderSelectDialogFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton.extended(
      onPressed: () {
        final folder =
            ref.read(drivePageNotifierProvider).breadcrumbs.lastOrNull;
        Navigator.of(context).pop((folder,));
      },
      label: const Text("選択"),
      icon: const Icon(Icons.check),
    );
  }
}
