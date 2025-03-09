import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../theme/app_theme.dart';

class FavoritesHeartButton extends StatelessWidget {
  const FavoritesHeartButton({this.isFavorite = true, super.key});

  static const _size = 20.0;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.topRight,
    child: InkWell(
      // ignore: avoid_print, prefer-correct-handler-name, it's TODO!
      onTap: () => print('Favorite button pressed!'),
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
    ),
  );
}
