import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:miria/view/drive_page/drive_page.dart";
import "package:misskey_dart/misskey_dart.dart";

@RoutePage<List<DriveFile>>()
class DriveFileSelectDialog extends HookConsumerWidget {
  final bool allowMultiple;

  const DriveFileSelectDialog({this.allowMultiple = false, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      child: DrivePage(
        selectFile: !allowMultiple,
        selectFiles: allowMultiple,
      ),
    );
  }
}
