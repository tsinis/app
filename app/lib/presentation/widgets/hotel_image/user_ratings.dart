import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rest_api/hotels_api.dart';

import '../../theme/app_theme.dart';
import '../general/maybe_text.dart';

class UserRatings extends StatelessWidget {
  const UserRatings(this._rating, {super.key});

  static const _style = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  final RatingInfo? _rating;

  /// Converts a rating score to a color:
  /// - 0.0 returns gray.
  /// - Values from >0 to <=5 transition from red to green.
  Color get _ratingToColor {
    final score = _rating?.score ?? 0;
    if (score == 0) return AppTheme.darkGrey;

    // ignore_for_file: no-magic-number, not a magic number, green -> red.
    final clampedScore = score.clamp(0, 5).toDouble();
    final hue = (clampedScore - 0.1) / (4.1 - 0.1) * 90;

    return HSLColor.fromAHSL(1, hue, 0.54, 0.48).toColor();
  }

  /// Returns the appropriate sentiment icon based on rating score.
  IconData get _ratingIcon => switch (_rating?.score ?? 0) {
    > 0 && <= 1.5 => Symbols.sentiment_very_dissatisfied,
    > 1.5 && <= 2.5 => Symbols.sentiment_dissatisfied,
    > 3.5 && <= 4.5 => Symbols.sentiment_satisfied,
    > 4.5 && <= 5.0 => Symbols.sentiment_very_satisfied,
    _ => Symbols.sentiment_neutral,
  };

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(
      bottom: AppTheme.size,
      left: AppTheme.size / 2,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 6,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(2)),
            color: _ratingToColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                VariedIcon.varied(
                  _ratingIcon,
                  color: AppTheme.white,
                  fill: 1,
                  size: 14,
                ),
                MaybeText(
                  _rating?.score?.toDouble(),
                  andWith: '/ 5.0',
                  style: _style,
                ),
              ],
            ),
          ),
        ),
        Text.rich(
          TextSpan(
            style: _style,
            children: [
              TextSpan(text: _rating?.scoreDescription),
              if (_rating?.scoreDescription != null) const TextSpan(text: ' ('),
              TextSpan(text: _rating?.reviewsCount?.toString()),
              if (_rating?.reviewsCount != null)
                const TextSpan(text: ' Reviews)'),
            ],
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
