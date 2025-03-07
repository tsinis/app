// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'room_request.mapper.dart';

@MappableClass()
class RoomRequest with RoomRequestMappable {
  const RoomRequest({this.adultCount, this.childrenAges});

  @MappableField(key: 'adult-count')
  final int? adultCount;
  @MappableField(key: 'children-ages')
  final List<num?>? childrenAges;

  static RoomRequest fromJson(Map<String, dynamic> json) =>
      RoomRequestMapper.ensureInitialized().decodeMap<RoomRequest>(json);
}
