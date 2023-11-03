import 'package:flutter/material.dart';
import 'package:miria/view/common/error_detail.dart';

class ErrorNotification extends StatelessWidget {
  final Object? error;
  final StackTrace? stackTrace;

  const ErrorNotification({
    super.key,
    required this.error,
    required this.stackTrace,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).dividerColor)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "エラーが発生しました",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              ErrorDetail(
                error: error,
                stackTrace: stackTrace,
              )
            ],
          ),
        ),
      ),
    );
  }
}
