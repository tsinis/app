import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:material_symbols_icons/symbols.dart';

/// A screen that displays the user's account information.
///
/// This screen shows a simple text widget as a placeholder for the account
/// content.
@RoutePage(name: AccountScreen.name)
class AccountScreen extends StatelessWidget {
  /// Creates an instance of [AccountScreen].
  const AccountScreen({super.key});

  /// The icon for the account tab.
  static const icon = Symbols.account_circle;

  /// The name of the account route.
  static const name = 'account';

  @override
  Widget build(BuildContext context) => const Center(child: Text('Account'));
}
