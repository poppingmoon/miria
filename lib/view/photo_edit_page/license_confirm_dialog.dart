import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/misskey_notes/mfm_text.dart';
import 'package:miria/view/dialogs/simple_message_dialog.dart';
import 'package:misskey_dart/misskey_dart.dart';

class LicenseConfirmDialog extends ConsumerStatefulWidget {
  final String emoji;
  final Account account;

  const LicenseConfirmDialog(
      {super.key, required this.emoji, required this.account});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      LicenseConfirmDialogState();
}

class LicenseConfirmDialogState extends ConsumerState<LicenseConfirmDialog> {
  var isLoading = true;
  Object? error;

  EmojiResponse? data;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    Future(() async {
      try {
        final response = await ref
            .read(misskeyProvider(widget.account))
            .emoji(EmojiRequest(name: widget.emoji));
        if (!mounted) return;
        setState(() {
          isLoading = false;
          data = response;
        });
      } catch (e) {
        if (!mounted) return;
        setState(() {
          error = e;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (error != null) {
      return SimpleMessageDialog(message: "エラーが起きたみたいや。\n$error");
    }
    final data = this.data;
    if (isLoading || data == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return AccountScope(
      account: widget.account,
      child: AlertDialog(
        content: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "このカスタム絵文字はこのようにライセンスされています。",
                ),
                MfmText(data.license ?? "※このカスタム絵文字に対してライセンスは設定されていません。")
              ],
            ),
          ),
        ),
        actions: [
          OutlinedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("わからへんからやめとく")),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text("使ってもだいじょうぶ"))
        ],
      ),
    );
  }
}
