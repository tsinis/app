// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'rating_info.mapper.dart';

/// Rating related fields for a hotel.
@MappableClass()
class RatingInfo with RatingInfoMappable {
  const RatingInfo({
    this.recommendationRate,
    this.reviewsCount,
    this.score,
    this.scoreDescription,
  });

  @MappableField(key: 'recommendation-rate')
  final num? recommendationRate;
  @MappableField(key: 'reviews-count')
  final int? reviewsCount;
  final num? score;
  @MappableField(key: 'score-description')
  final String? scoreDescription;

  static RatingInfo fromJson(Map<String, dynamic> json) =>
      RatingInfoMapper.ensureInitialized().decodeMap<RatingInfo>(json);
}
