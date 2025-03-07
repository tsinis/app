import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: OverviewScreen.name)
class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  static const icon = Icons.home_outlined;
  static const name = 'overview';

  @override
  Widget build(BuildContext context) => const Center(child: Text('Overview'));
}
