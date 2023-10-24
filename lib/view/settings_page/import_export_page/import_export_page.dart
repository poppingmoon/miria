import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/dialogs/simple_message_dialog.dart';

@RoutePage()
class ImportExportPage extends ConsumerStatefulWidget {
  const ImportExportPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ImportExportPageState();
}

class ImportExportPageState extends ConsumerState<ImportExportPage> {
  Account? selectedImportAccount;
  Account? selectedExportAccount;

  @override
  Widget build(BuildContext context) {
    final accounts = ref.watch(accountRepositoryProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("設定のインポート・エクスポート")),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "設定ファイルの管理",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Text("現在の設定から、「全般設定」「アカウントごとの設定」「タブ設定」を設定ファイルに出力して管理することができます。"),
            const Text("・ログイン情報は記録されません。"),
            const Text("・設定ファイルは、指定したアカウントの「ドライブ」に保存されます。"),
            const Text("・作成できる設定ファイルは、「ドライブ」のフォルダごとに1つまでです。"),
            Text(
              "インポート",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Text("全般設定と、この端末でログインしているアカウントに対応する設定が読み込まれます。"),
            Row(
              children: [
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    items: [
                      for (final account in accounts)
                        DropdownMenuItem(
                          value: account,
                          child: Text(account.acct.toString()),
                        ),
                    ],
                    value: selectedImportAccount,
                    onChanged: (Account? value) {
                      setState(() {
                        selectedImportAccount = value;
                      });
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final account = selectedImportAccount;
                    if (account == null) {
                      await SimpleMessageDialog.show(context, "アカウントを選んでや");
                      return;
                    }
                    await ref
                        .read(importExportRepository)
                        .import(context, account);
                  },
                  child: const Text("選択"),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            Text(
              "エクスポート",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Text("この端末でログインしているすべてのアカウントの情報を設定ファイルに記録します。"),
            Row(
              children: [
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    items: [
                      for (final account in accounts)
                        DropdownMenuItem(
                          value: account,
                          child: Text(account.acct.toString()),
                        ),
                    ],
                    value: selectedExportAccount,
                    onChanged: (Account? value) {
                      setState(() {
                        selectedExportAccount = value;
                      });
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final account = selectedExportAccount;
                    if (account == null) {
                      SimpleMessageDialog.show(
                        context,
                        "設定ファイルを保存するアカウントを選んでや",
                      );
                      return;
                    }
                    ref.read(importExportRepository).export(context, account);
                  },
                  child: const Text("保存"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
