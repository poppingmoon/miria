import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/misskey_notes/mfm_text.dart';
import 'package:misskey_dart/misskey_dart.dart';

class TranslateNoteModalSheet extends ConsumerWidget {
  const TranslateNoteModalSheet({
    super.key,
    required this.account,
    required this.note,
  });

  final Account account;
  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(misskeyProvider(account)).notes.translate(
            NotesTranslateRequest(
              noteId: note.id,
              targetLang: Localizations.localeOf(context).toLanguageTag(),
            ),
          ),
      builder: (context, snapshot) {
        final data = snapshot.data;
        if (data == null) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: Text(S.of(context).translatedFrom(data.sourceLang)),
                    trailing: IconButton(
                      onPressed: () =>
                          Clipboard.setData(ClipboardData(text: data.text)),
                      tooltip: S.of(context).copy,
                      icon: const Icon(Icons.copy),
                    ),
                  ),
                  Center(
                    child: Card(
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: AccountScope(
                            account: account,
                            child: MfmText(
                              mfmText: data.text,
                              host: note.user.host,
                              emoji: note.emojis,
                              isEnableAnimatedMFM: ref
                                  .watch(generalSettingsRepositoryProvider)
                                  .settings
                                  .enableAnimatedMFM,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
