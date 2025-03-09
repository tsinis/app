// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'api_image.dart';
import 'best_offer.dart';
import 'rating_info.dart';

part 'hotel.mapper.dart';

@MappableClass()
class Hotel with HotelMappable {
  const Hotel({
    required this.hotelId,
    this.bestOffer,
    this.destination,
    this.images,
    this.name,
    this.ratingInfo,
  });

  @MappableField(key: 'hotel-id')
  final String hotelId;
  @MappableField(key: 'best-offer')
  final BestOffer? bestOffer;
  final String? destination;
  final List<ApiImage?>? images;
  final String? name;
  @MappableField(key: 'rating-info')
  final RatingInfo? ratingInfo;

  static Hotel fromJson(Map<String, dynamic> json) =>
      HotelMapper.ensureInitialized().decodeMap<Hotel>(json);
}
