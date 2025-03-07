// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'travel_date.mapper.dart';

@MappableClass()
class TravelDate with TravelDateMappable {
  const TravelDate({
    this.days,
    this.departureDate,
    this.nights,
    this.returnDate,
  });

  final num? days;
  @MappableField(key: 'departure-date')
  final DateTime? departureDate;
  final num? nights;
  @MappableField(key: 'return-date')
  final DateTime? returnDate;

  static TravelDate fromJson(Map<String, dynamic> json) =>
      TravelDateMapper.ensureInitialized().decodeMap<TravelDate>(json);
}
