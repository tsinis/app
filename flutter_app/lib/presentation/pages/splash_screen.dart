import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: SplashScreen.name)
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const name = 'splash';

  @override
  Widget build(BuildContext context) => const ColoredBox(color: Colors.white);
}
