import 'package:flutter/material.dart';
import 'package:miria/model/account.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/misskey_notes/mfm_text.dart';

class SimpleConfirmDialog extends StatelessWidget {
  final String message;
  final String primary;
  final String secondary;
  final bool isMfm;
  final Account? account;

  static Future<bool?> show({
    required BuildContext context,
    required String message,
    required String primary,
    required String secondary,
    bool isMfm = false,
    Account? account,
  }) =>
      showDialog<bool>(
        context: context,
        builder: (context) => SimpleConfirmDialog(
          message: message,
          primary: primary,
          secondary: secondary,
          isMfm: isMfm,
          account: account,
        ),
      );

  const SimpleConfirmDialog({
    super.key,
    required this.message,
    required this.primary,
    required this.secondary,
    this.isMfm = false,
    this.account,
  }) : assert(isMfm == false || (isMfm == true && account != null));

  @override
  Widget build(BuildContext context) {
    if (isMfm) {
      return AccountScope(
        account: account!,
        child: AlertDialog(
          content: SimpleMfmText(message),
          actions: [
            OutlinedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(secondary),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(primary),
            ),
          ],
        ),
      );
    }

    return AlertDialog(
      content: Text(message),
      actions: [
        OutlinedButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(secondary),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(primary),
        ),
      ],
    );
  }
}
