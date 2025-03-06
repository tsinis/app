import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: HotelsScreen.name)
class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

  static const icon = Icons.search_outlined;
  static const name = 'hotels';

  @override
  Widget build(BuildContext context) => const Center(child: Text('Hotels'));
}
