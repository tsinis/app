import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage(name: FavoritesScreen.name)
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  static const icon = Symbols.favorite_border;
  static const name = 'favorites';

  @override
  Widget build(BuildContext context) => const Center(child: Text('Favorites'));
}
