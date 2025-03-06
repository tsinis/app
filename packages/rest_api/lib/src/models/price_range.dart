// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'price_range.mapper.dart';

@MappableClass()
class PriceRange with PriceRangeMappable {
  const PriceRange({this.max, this.min});

  final num? max;
  final num? min;

  static PriceRange fromJson(Map<String, dynamic> json) =>
      PriceRangeMapper.ensureInitialized().decodeMap<PriceRange>(json);
}
