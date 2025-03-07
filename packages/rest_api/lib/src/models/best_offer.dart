// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'best_offer_available_special_groups.dart';
import 'rooms.dart';
import 'travel_date.dart';

part 'best_offer.mapper.dart';

@MappableClass()
class BestOffer with BestOfferMappable {
  const BestOffer({
    this.appliedTravelDiscount,
    this.detailedPricePerPerson,
    this.includedTravelDiscount,
    this.originalTravelPrice,
    this.simplePricePerPerson,
    this.total,
    this.travelPrice,
    this.availableSpecialGroups,
    this.flightIncluded,
    this.rooms,
    this.travelDate,
  });

  @MappableField(key: 'applied-travel-discount')
  final num? appliedTravelDiscount;
  @MappableField(key: 'detailed-price-per-person')
  final List<num?>? detailedPricePerPerson;
  @MappableField(key: 'included-travel-discount')
  final num? includedTravelDiscount;
  @MappableField(key: 'original-travel-price')
  final num? originalTravelPrice;
  @MappableField(key: 'simple-price-per-person')
  final num? simplePricePerPerson;
  final num? total;
  @MappableField(key: 'travel-price')
  final num? travelPrice;
  @MappableField(key: 'available-special-groups')
  final List<BestOfferAvailableSpecialGroups>? availableSpecialGroups;
  @MappableField(key: 'flight-included')
  final bool? flightIncluded;
  final Rooms? rooms;
  @MappableField(key: 'travel-date')
  final TravelDate? travelDate;

  static BestOffer fromJson(Map<String, dynamic> json) =>
      BestOfferMapper.ensureInitialized().decodeMap<BestOffer>(json);
}
