import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: FailureScreen.name)
class FailureScreen extends StatelessWidget {
  const FailureScreen(this._message, {super.key});

  static const name = 'failure';
  final String _message;

  @override
  Widget build(BuildContext context) => Text(_message);
}
