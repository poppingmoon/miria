import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/state_notifier/drive_page/drive_page_notifier.dart';
import 'package:miria/view/drive_page/drive_page.dart';

class DriveFileSelectDialog extends StatelessWidget {
  const DriveFileSelectDialog({
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
          title: const Text("ファイルを選択"),
          tapToSelect: true,
          floatingActionButtonBuilder: (context) =>
              const DriveFileSelectDialogFloatingActionButton(),
        ),
      ),
    );
  }
}

class DriveFileSelectDialogFloatingActionButton extends ConsumerWidget {
  const DriveFileSelectDialogFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final files = ref.watch(drivePageNotifierProvider).selectedFiles;
    return FloatingActionButton.extended(
      onPressed:
          files.isNotEmpty ? () => Navigator.of(context).pop(files) : null,
      label: const Text("選択"),
      icon: const Icon(Icons.check),
    );
  }
}
