import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:material_symbols_icons/symbols.dart';

/// A screen that displays the overview of the app.
///
/// This screen shows a simple text widget as a placeholder for the overview
/// content.
@RoutePage(name: OverviewScreen.name)
class OverviewScreen extends StatelessWidget {
  /// Creates an instance of [OverviewScreen].
  const OverviewScreen({super.key});

  /// The icon for the overview tab.
  static const icon = Symbols.home;

  /// The name of the overview route.
  static const name = 'overview';

  @override
  Widget build(BuildContext context) => const Center(child: Text('Overview'));
}
