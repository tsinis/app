// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'room_groups.mapper.dart';

@MappableClass()
class RoomGroups with RoomGroupsMappable {
  const RoomGroups({
    this.attributes,
    this.boarding,
    this.name,
    this.detailedDescription,
    this.groupIdentifier,
    this.quantity,
  });

  final List<dynamic>? attributes;
  final String? boarding;
  final String? name;
  @MappableField(key: 'detailed-description')
  final String? detailedDescription;
  @MappableField(key: 'group-identifier')
  final String? groupIdentifier;
  final num? quantity;

  static RoomGroups fromJson(Map<String, dynamic> json) =>
      RoomGroupsMapper.ensureInitialized().decodeMap<RoomGroups>(json);
}
