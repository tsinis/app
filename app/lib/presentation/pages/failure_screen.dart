import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A screen that displays an error message when an operation fails.
///
/// This screen shows a simple text widget with the provided error message.
@RoutePage(name: FailureScreen.name)
class FailureScreen extends StatelessWidget {
  /// Creates an instance of [FailureScreen].
  const FailureScreen(this._message, {super.key});

  /// The name of the failure route.
  static const name = 'failure';

  /// The error message to display.
  final String _message;

  @override
  Widget build(BuildContext context) => Text(_message);
}
