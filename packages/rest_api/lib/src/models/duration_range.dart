// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'duration_range.mapper.dart';

@MappableClass()
class DurationRange with DurationRangeMappable {
  const DurationRange({this.max, this.min});

  final String? max;
  final String? min;

  static DurationRange fromJson(Map<String, dynamic> json) =>
      DurationRangeMapper.ensureInitialized().decodeMap<DurationRange>(json);
}
