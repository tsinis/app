import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/hotels_api.dart';
import 'package:world_countries/helpers.dart';

import 'favorites_heart_button.dart';
import 'user_ratings.dart';

class HotelPhoto extends StatelessWidget {
  const HotelPhoto(this._hotel, {this.hasDetails = true, super.key});

  static const _fadeDuration = Duration(milliseconds: 200);

  final Hotel _hotel;
  final bool hasDetails;

  ApiImage? get _image => _hotel.images?.firstOrNull;

  @override
  Widget build(BuildContext context) => AspectRatio(
    aspectRatio: 4 / 3,
    child: LayoutBuilder(
      builder:
          (_, size) => ColoredBox(
            color: Colors.lightBlue.shade50,
            child: MaybeWidget(
              _image?.large ?? _image?.small,
              (url) => CachedNetworkImage(
                errorWidget:
                    (_, _, _) =>
                        const Center(child: Icon(Icons.error_outline_outlined)),
                fadeInDuration: _fadeDuration,
                fit: BoxFit.fitWidth,
                imageBuilder:
                    (_, i) => DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.fitWidth, image: i),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const FavoritesHeartButton(),
                          if (!hasDetails)
                            MaybeWidget(_hotel.ratingInfo, UserRatings.new),
                        ],
                      ),
                    ),

                /// Since small images are 400px wide, we can prefer them.
                /// https://gs.statcounter.com/screen-resolution-stats/mobile/eu
                imageUrl: size.maxWidth <= 420 ? (_image?.small ?? url) : url,
                placeholderFadeInDuration: _fadeDuration,
              ),
            ),
          ),
    ),
  );
}
