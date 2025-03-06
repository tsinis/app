// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'attributes.dart';

part 'room_overall.mapper.dart';

@MappableClass()
class RoomOverall with RoomOverallMappable {
  const RoomOverall({
    this.attributes,
    this.boarding,
    this.name,
    this.adultCount,
    this.childrenAges,
    this.childrenCount,
    this.quantity,
    this.sameBoarding,
    this.sameRoomGroups,
  });

  final List<Attributes?>? attributes;
  final String? boarding;
  final String? name;
  @MappableField(key: 'adult-count')
  final int? adultCount;
  @MappableField(key: 'children-ages')
  final List<num?>? childrenAges;
  @MappableField(key: 'children-count')
  final int? childrenCount;
  final num? quantity;
  @MappableField(key: 'same-boarding')
  final bool? sameBoarding;
  @MappableField(key: 'same-room-groups')
  final bool? sameRoomGroups;

  static RoomOverall fromJson(Map<String, dynamic> json) =>
      RoomOverallMapper.ensureInitialized().decodeMap<RoomOverall>(json);
}
