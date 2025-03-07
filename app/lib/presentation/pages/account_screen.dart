import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: AccountScreen.name)
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  static const icon = Icons.account_circle_outlined;
  static const name = 'account';

  @override
  Widget build(BuildContext context) => const Center(child: Text('Account'));
}
