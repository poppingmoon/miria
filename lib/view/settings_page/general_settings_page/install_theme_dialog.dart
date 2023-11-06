import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json5/json5.dart';
import 'package:miria/model/color_theme.dart';
import 'package:miria/model/misskey_theme.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/error_dialog_handler.dart';

final _formKeyProvider = Provider.autoDispose((ref) => GlobalKey<FormState>());

class InstallThemeDialog extends ConsumerWidget {
  const InstallThemeDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(_formKeyProvider);

    return AlertDialog(
      scrollable: true,
      title: const Text("テーマのインストール"),
      content: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "テーマコード",
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              minLines: 10,
              textAlignVertical: TextAlignVertical.top,
              validator: (code) {
                if (code == null || code.isEmpty) {
                  return "値が入力されていません";
                }
                try {
                  ColorTheme.misskey(
                    MisskeyTheme.fromJson(
                      json5Decode(code) as Map<String, dynamic>,
                    ),
                  );
                } catch (e) {
                  return "テーマの形式が間違っています";
                }
                return null;
              },
              onSaved: (code) {
                if (formKey.currentState!.validate()) {
                  ref
                      .read(colorThemeRepositoryProvider.notifier)
                      .addTheme(code!)
                      .expectFailure(context);
                  Navigator.of(context).pop();
                }
              },
            ),
            ElevatedButton(
              onPressed: () => formKey.currentState?.save(),
              child: const Text("インストール"),
            ),
          ],
        ),
      ),
    );
  }
}
