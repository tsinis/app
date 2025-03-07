// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'range.mapper.dart';

@MappableClass()
class Range with RangeMappable {
  const Range({
    this.max,
    this.min,
    this.type,
    this.selectedMaxValue,
    this.selectedMinValue,
  });

  final String? max;
  final String? min;
  final String? type;
  @MappableField(key: 'selected-max-value')
  final String? selectedMaxValue;
  @MappableField(key: 'selected-min-value')
  final String? selectedMinValue;

  static Range fromJson(Map<String, dynamic> json) =>
      RangeMapper.ensureInitialized().decodeMap<Range>(json);
}
