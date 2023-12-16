import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:misskey_dart/misskey_dart.dart';

class NoteVisibilityDialog extends ConsumerWidget {
  final Account account;

  const NoteVisibilityDialog({
    super.key,
    required this.account,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        ListTile(
          onTap: () {
            if (ref
                .read(noteCreateProvider(account).notifier)
                .validateNoteVisibility(NoteVisibility.public, context)) {
              Navigator.of(context).pop(NoteVisibility.public);
            }
          },
          leading: const Icon(Icons.public),
          title: Text(S.of(context).public),
          subtitle: Text(S.of(context).publicDescription),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).pop(NoteVisibility.home);
          },
          leading: const Icon(Icons.home),
          title: Text(S.of(context).home),
          subtitle: Text(S.of(context).homeDescription),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).pop(NoteVisibility.followers);
          },
          leading: const Icon(Icons.lock_outline),
          title: Text(S.of(context).followers),
          subtitle: Text(S.of(context).followersDescription),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).pop(NoteVisibility.specified);
          },
          leading: const Icon(Icons.mail),
          title: Text(S.of(context).direct),
          subtitle: Text(S.of(context).directDescription),
        ),
      ],
    );
  }
}
