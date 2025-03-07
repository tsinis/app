import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: FavoritesScreen.name)
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  static const icon = Icons.favorite_outline_sharp;
  static const name = 'favorites';

  @override
  Widget build(BuildContext context) => const Center(child: Text('Favorites'));
}
