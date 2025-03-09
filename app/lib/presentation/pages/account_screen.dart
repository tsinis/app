import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage(name: AccountScreen.name)
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  static const icon = Symbols.account_circle;
  static const name = 'account';

  @override
  Widget build(BuildContext context) => const Center(child: Text('Account'));
}
