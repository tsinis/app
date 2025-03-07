// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'prices_and_occupancy.dart';
import 'room_groups.dart';
import 'room_overall.dart';

part 'rooms.mapper.dart';

@MappableClass()
class Rooms with RoomsMappable {
  const Rooms({this.overall, this.pricesAndOccupancy, this.roomGroups});

  final RoomOverall? overall;
  @MappableField(key: 'prices-and-occupancy')
  final List<PricesAndOccupancy?>? pricesAndOccupancy;
  @MappableField(key: 'room-groups')
  final List<RoomGroups?>? roomGroups;

  static Rooms fromJson(Map<String, dynamic> json) =>
      RoomsMapper.ensureInitialized().decodeMap<Rooms>(json);
}
