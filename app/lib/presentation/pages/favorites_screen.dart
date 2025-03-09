import 'package:auto_route/auto_route.dart';
import 'package:database/database.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rest_api/hotels_api.dart';

import '../widgets/hotel_list.dart';

@RoutePage(name: FavoritesScreen.name)
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  static const icon = Symbols.favorite_border;
  static const name = 'favorites';

  @override
  Widget build(BuildContext context) =>
      const HotelList<FavoritesEvent, HotelDataState<Hotel>, FavoritesBloc>(
        refresh: FavoritesRefreshed(),
      );
}
