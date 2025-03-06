// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'prices_and_occupancy.mapper.dart';

@MappableClass()
class PricesAndOccupancy with PricesAndOccupancyMappable {
  const PricesAndOccupancy({
    this.adultCount,
    this.childrenAges,
    this.childrenCount,
    this.detailedPricePerPerson,
    this.groupIdentifier,
    this.simplePricePerPerson,
    this.total,
  });

  @MappableField(key: 'adult-count')
  final int? adultCount;
  @MappableField(key: 'children-ages')
  final List<num?>? childrenAges;
  @MappableField(key: 'children-count')
  final int? childrenCount;
  @MappableField(key: 'detailed-price-per-person')
  final List<num?>? detailedPricePerPerson;
  @MappableField(key: 'group-identifier')
  final String? groupIdentifier;
  @MappableField(key: 'simple-price-per-person')
  final num? simplePricePerPerson;
  final num? total;

  static PricesAndOccupancy fromJson(Map<String, dynamic> json) =>
      PricesAndOccupancyMapper.ensureInitialized()
          .decodeMap<PricesAndOccupancy>(json);
}
