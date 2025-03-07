// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'analytics.dart';
import 'api_image.dart';
import 'best_offer.dart';
import 'rating_info.dart';

part 'hotel.mapper.dart';

@MappableClass()
class Hotel with HotelMappable {
  const Hotel({
    this.analytics,
    this.badges,
    this.bestOffer,
    this.category,
    this.categoryType,
    this.destination,
    this.hotelId,
    this.images,
    this.latitude,
    this.longitude,
    this.name,
    this.ratingInfo,
  });

  final Analytics? analytics;
  final List<String?>? badges;
  @MappableField(key: 'best-offer')
  final BestOffer? bestOffer;
  final int? category;
  @MappableField(key: 'category-type')
  final String? categoryType;
  final String? destination;
  @MappableField(key: 'hotel-id')
  final String? hotelId;
  final List<ApiImage?>? images;
  final double? latitude;
  final double? longitude;
  final String? name;
  @MappableField(key: 'rating-info')
  final RatingInfo? ratingInfo;

  static Hotel fromJson(Map<String, dynamic> json) =>
      HotelMapper.ensureInitialized().decodeMap<Hotel>(json);
}
