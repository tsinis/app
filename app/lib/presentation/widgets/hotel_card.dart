import 'package:flutter/material.dart';
import 'package:rest_api/hotels_api.dart';
import 'package:world_countries/helpers.dart';

import '../theme/app_theme.dart';
import 'general/maybe_text.dart';
import 'hotel_description/hotel_description.dart';
import 'hotel_image/hotel_photo.dart';

/// A widget that displays a card with hotel information.
///
/// This widget can be used to display hotel details or hotel ratings.
class HotelCard extends StatelessWidget {
  /// Creates an instance of [HotelCard] for displaying hotel ratings.
  const HotelCard.rate(this._hotel, {super.key}) : _index = null, _total = null;

  /// Creates an instance of [HotelCard] for displaying hotel details.
  const HotelCard.details(this._hotel, {int? index, int? total, super.key})
    : _index = index,
      _total = total;

  final Hotel _hotel;
  final int? _index;
  final int? _total;

  @override
  Widget build(BuildContext context) {
    final hasDetails = _total != null;

    final card = Card(
      child: Column(
        children: [
          HotelPhoto(_hotel, hasRatingInfo: !hasDetails),
          HotelDescription(_hotel, hasDetails: hasDetails),
        ],
      ),
    );
    if (_index != 0 || _total == null) return card;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: AppTheme.size,
            top: AppTheme.size + AppTheme.size / 2,
          ),
          child: MaybeText(
            _total,
            andWith: 'Hotels for Mallorca',
            style: context.theme.textTheme.titleLarge,
          ),
        ),
        card,
      ],
    );
  }
}
