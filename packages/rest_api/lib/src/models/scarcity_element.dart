// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'scarcity_element.mapper.dart';

@MappableClass()
class ScarcityElement with ScarcityElementMappable {
  const ScarcityElement({this.type});

  final String? type;

  static ScarcityElement fromJson(Map<String, dynamic> json) =>
      ScarcityElementMapper.ensureInitialized().decodeMap<ScarcityElement>(
        json,
      );
}
