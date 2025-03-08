import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage(name: OverviewScreen.name)
class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  static const icon = Symbols.home;
  static const name = 'overview';

  @override
  Widget build(BuildContext context) => const Center(child: Text('Overview'));
}
