import 'package:auto_route/auto_route.dart';
import 'package:database/database.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rest_api/hotels_api.dart';

import '../widgets/hotel_list.dart';

/// A screen that displays the list of favorite hotels.
///
/// This screen uses the [HotelList] widget to display the favorite hotels.
@RoutePage(name: FavoritesScreen.name)
class FavoritesScreen extends StatelessWidget {
  /// Creates an instance of [FavoritesScreen].
  const FavoritesScreen({super.key});

  /// The icon for the favorites tab.
  static const icon = Symbols.favorite_border;

  /// The name of the favorites route.
  static const name = 'favorites';

  @override
  Widget build(BuildContext context) =>
      const HotelList<FavoritesEvent, HotelDataState<Hotel>, FavoritesBloc>(
        refresh: FavoritesRefreshed(),
      );
}
