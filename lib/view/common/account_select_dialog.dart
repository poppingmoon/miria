import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/avatar_icon.dart';
import 'package:miria/view/common/misskey_notes/mfm_text.dart';

class AccountSelectDialog extends ConsumerWidget {
  const AccountSelectDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts =
        ref.watch(accountRepository.select((value) => value.account));
    return AlertDialog(
      title: const Text("開くアカウント選んでや"),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.8,
        child: ListView(
          children: [
            for (final account in accounts)
              AccountScope(
                account: account,
                child: ListTile(
                  leading: AvatarIcon.fromIResponse(account.i),
                  title: SimpleMfmText(
                    account.i.name ?? account.i.username,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    "@${account.userId}@${account.host}",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  onTap: () {
                    Navigator.of(context).pop(account);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
