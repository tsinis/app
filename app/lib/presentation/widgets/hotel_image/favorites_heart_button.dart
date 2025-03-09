import 'package:database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rest_api/hotels_api.dart';

import '../../theme/app_theme.dart';

class FavoritesHeartButton extends StatelessWidget {
  const FavoritesHeartButton(this._hotel, {super.key});

  static const _size = 20.0;
  final Hotel _hotel;

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.topRight,
    child: BlocBuilder<FavoritesBloc, HotelDataState<Hotel>>(
      builder: (bc, state) {
        final id = _hotel.hotelId;
        final isFavorite = state.data?.any((i) => i.hotelId == id) ?? false;

        return InkWell(
          onTap:
              () => bc.read<FavoritesBloc>().add(
                isFavorite
                    ? FavoritesRemoved(hotel: _hotel)
                    : FavoritesAdded(hotel: _hotel),
              ),
          child: Padding(
            padding: const EdgeInsets.all(AppTheme.size),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: VariedIcon.varied(
                Symbols.favorite_rounded,
                color: AppTheme.white,
                fill: isFavorite ? 1 : 0,
                key: ValueKey(isFavorite),
                shadows:
                    isFavorite
                        ? const [
                          BoxShadow(
                            blurRadius: AppTheme.size,
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            spreadRadius: _size,
                          ),
                        ]
                        : null,
                size: _size * 1.25,
              ),
            ),
          ),
        );
      },
    ),
  );
}
