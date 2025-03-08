import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

class StarsRating extends StatelessWidget {
  const StarsRating(this._rating, {this.max = 5, super.key});

  static const _size = AppTheme.size;

  final num _rating;
  final int max;

  @override
  Widget build(BuildContext context) {
    final rating = _rating.clamp(0, max);
    final full = rating.floor();
    final hasHalf = (rating - full) >= 0.25 && (rating - full) < 0.75;
    final empty = max - full - (hasHalf ? 1 : 0);

    return Row(
      children: [
        for (int i = 0; i < full; i += 1)
          const Icon(Icons.star_rounded, size: _size),

        if (hasHalf) const Icon(Icons.star_half_rounded, size: _size),

        for (int i = 0; i < empty; i += 1)
          const Icon(Icons.star_border_rounded, size: _size),

        const Padding(
          padding: EdgeInsets.only(left: 6),
          child: Icon(Icons.help_outline, color: AppTheme.darkGrey, size: 17),
        ),
      ],
    );
  }
}
