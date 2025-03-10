import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/hotels_api.dart';
import 'package:world_countries/helpers.dart';

import 'favorites_heart_button.dart';
import 'user_ratings.dart';

class HotelPhoto extends StatelessWidget {
  const HotelPhoto(this._hotel, {this.hasRatingInfo = true, super.key});

  static const _fadeDuration = Duration(milliseconds: 200);

  final Hotel _hotel;
  final bool hasRatingInfo;

  ApiImage? get _image => _hotel.images?.firstOrNull;

  @override
  Widget build(BuildContext context) => AspectRatio(
    aspectRatio: 4 / 3,
    child: LayoutBuilder(
      builder: (_, size) {
        /// Since small images are 400px wide, we can prefer them.
        /// https://gs.statcounter.com/screen-resolution-stats/mobile/eu
        final shouldUseSmall = size.maxWidth <= 420;
        final child = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            FavoritesHeartButton(_hotel),
            if (hasRatingInfo) MaybeWidget(_hotel.ratingInfo, UserRatings.new),
          ],
        );

        return ColoredBox(
          color: Colors.lightBlue.shade50,
          child: MaybeWidget(
            _image?.large ?? _image?.small,
            (url) => CachedNetworkImage(
              errorWidget: (_, _, _) => const Center(child: Icon(Icons.error)),
              fadeInDuration: _fadeDuration,
              fit: BoxFit.fitWidth,
              imageBuilder:
                  (_, i) => DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.fitWidth, image: i),
                    ),
                    child: child,
                  ),
              imageUrl: shouldUseSmall ? (_image?.small ?? url) : url,
              placeholderFadeInDuration: _fadeDuration,
            ),
            orElse: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    shouldUseSmall
                        ? 'assets/images/small.webp'
                        : 'assets/images/large.webp',
                  ),
                ),
              ),
              child: child,
            ),
          ),
        );
      },
    ),
  );
}
