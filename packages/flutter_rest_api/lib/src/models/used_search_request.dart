// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'duration_range.dart';
import 'price_range.dart';
import 'room_request.dart';
import 'used_search_request_sort.dart';

part 'used_search_request.mapper.dart';

@MappableClass()
class UsedSearchRequest with UsedSearchRequestMappable {
  const UsedSearchRequest({
    this.attributes,
    this.departureAirports,
    this.departureDate,
    this.durationRange,
    this.priceRange,
    this.returnDate,
    this.rooms,
    this.travelType,
    this.destination,
    this.sort,
    this.destinationName,
    this.limit,
    this.offset,
  });

  final String? attributes;
  @MappableField(key: 'departure-airports')
  final String? departureAirports;
  @MappableField(key: 'departure-date')
  final DateTime? departureDate;
  @MappableField(key: 'duration-range')
  final DurationRange? durationRange;
  @MappableField(key: 'price-range')
  final PriceRange? priceRange;
  @MappableField(key: 'return-date')
  final DateTime? returnDate;
  final List<RoomRequest?>? rooms;
  @MappableField(key: 'travel-type')
  final String? travelType;
  final String? destination;
  final UsedSearchRequestSort? sort;
  final String? destinationName;
  final num? limit;
  final num? offset;

  static UsedSearchRequest fromJson(Map<String, dynamic> json) =>
      UsedSearchRequestMapper.ensureInitialized().decodeMap<UsedSearchRequest>(
        json,
      );
}
