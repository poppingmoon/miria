import 'package:flutter/material.dart';
import 'package:miria/i18n/strings.g.dart';

class SimpleMessageDialog extends StatelessWidget {
  final String message;

  static Future<void> show(BuildContext context, String message) async =>
      await showDialog(
          context: context,
          builder: (context) => SimpleMessageDialog(message: message));

  const SimpleMessageDialog({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(message),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(t.gotIt))
      ],
    );
  }
}
