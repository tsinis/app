import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A screen that displays a splash screen while the app is loading.
///
/// This screen shows a simple white background as a placeholder for the splash
/// content.
@RoutePage(name: SplashScreen.name)
class SplashScreen extends StatelessWidget {
  /// Creates an instance of [SplashScreen].
  const SplashScreen({super.key});

  /// The name of the splash route.
  static const name = 'splash';

  @override
  Widget build(BuildContext context) => const ColoredBox(color: Colors.white);
}
