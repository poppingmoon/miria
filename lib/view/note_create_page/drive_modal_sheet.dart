import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

enum DriveModalSheetReturnValue { uploadMedia, uploadFile, drive }

@RoutePage<DriveModalSheetReturnValue>()
class DriveModalSheet extends StatelessWidget {
  const DriveModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(S.of(context).uploadMedia),
          leading: const Icon(Icons.upload),
          onTap: () async =>
              context.maybePop(DriveModalSheetReturnValue.uploadMedia),
        ),
        ListTile(
          title: Text(S.of(context).uploadFile),
          leading: const Icon(Icons.upload_file),
          onTap: () {
            Navigator.of(context).pop(DriveModalSheetReturnValue.uploadFile);
          },
        ),
        ListTile(
          title: Text(S.of(context).fromDrive),
          leading: const Icon(Icons.cloud_outlined),
          onTap: () async => context.maybePop(DriveModalSheetReturnValue.drive),
        ),
      ],
    );
  }
}
