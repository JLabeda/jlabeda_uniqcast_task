import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jlabeda_uniqcast_task/core/model/uc_task_exception.dart';

class ErrorPopup extends StatelessWidget {
  const ErrorPopup(this.exception, {super.key});

  final UCTaskException exception;

  static Future<void> show(
    BuildContext context,
    UCTaskException exception,
  ) async {
    await showDialog<void>(
      context: context,
      builder: (context) => ErrorPopup(exception),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog.adaptive(
        content: Text(
          exception.message,
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
