import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rest_api/hotels_api.dart';
import 'package:world_countries/helpers.dart';

import '../../theme/app_theme.dart';
import '../general/maybe_text.dart';
import 'stars_rating.dart';
import 'wrapped_text_description.dart';

class HotelDescription extends StatelessWidget {
  const HotelDescription(this.hotel, {this.hasDetails = true, super.key});

  static String? _formatPrice(num? price) =>
      price == null
          ? null
          // ignore: avoid-non-ascii-symbols, EUR currency symbol is €.
          : NumberFormat.currency(locale: 'eu', symbol: '€').format(price);

  final bool hasDetails;
  final Hotel hotel;

  bool get _hasChildren =>
      (hotel.bestOffer?.rooms?.overall?.childrenCount ?? 0) > 0;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(AppTheme.size),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...MaybeWidget.list(hotel.ratingInfo?.score, child: StarsRating.new),
        MaybeText(hotel.name, style: context.theme.textTheme.titleMedium),
        MaybeText(hotel.destination, style: context.theme.textTheme.titleSmall),
        const Divider(height: AppTheme.size * 2),
        if (hasDetails)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: <WrappedTextDescription>[
                    WrappedTextDescription(
                      first: hotel.bestOffer?.travelDate?.days,
                      firstLabel: 'Days',
                      last: hotel.bestOffer?.travelDate?.nights,
                      lastLabel: 'Nights',
                    ),
                    WrappedTextDescription(
                      first: hotel.bestOffer?.rooms?.overall?.name,
                      last: hotel.bestOffer?.rooms?.overall?.boarding,
                    ),
                    WrappedTextDescription(
                      first: hotel.bestOffer?.rooms?.overall?.adultCount,
                      // TODO? Handle plural/singular form for adults and kids?
                      firstLabel: _hasChildren ? 'Adults with ' : 'Adults',
                      last:
                          (hotel.bestOffer?.flightIncluded ?? false)
                              ? 'Incl.'
                              : 'Not incl.',
                      lastLabel: 'Flight',
                      second:
                          _hasChildren
                              ? hotel.bestOffer?.rooms?.overall?.childrenCount
                              : null,
                      secondLabel: 'children',
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 8,
                child: Text.rich(
                  TextSpan(
                    children: [
                      if (hotel.bestOffer?.total != null)
                        const TextSpan(
                          style: TextStyle(color: Colors.black),
                          text: 'from ',
                        ),
                      TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        text: _formatPrice(hotel.bestOffer?.total),
                      ),
                      if (hotel.bestOffer?.total != null)
                        const TextSpan(text: '\n'),
                      TextSpan(
                        style: const TextStyle(),
                        text: _formatPrice(
                          hotel.bestOffer?.simplePricePerPerson,
                        ),
                      ),
                      if (hotel.bestOffer?.simplePricePerPerson != null)
                        const TextSpan(text: ' p.P.'),
                    ],
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        Padding(
          padding: EdgeInsets.only(top: hasDetails ? 12 : 0),
          child: ElevatedButton(
            onPressed: () => Never,
            child: Text(
              hasDetails ? 'Go to the offers' : 'To the hotel',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    ),
  );
}
