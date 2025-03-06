// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'filter_attribute.mapper.dart';

@MappableClass()
class FilterAttribute with FilterAttributeMappable {
  const FilterAttribute({
    this.attributeIdentifier,
    this.attributeValue,
    this.inUse,
    this.isDisabled,
    this.isPopular,
    this.minPrice,
    this.resultCount,
  });

  @MappableField(key: 'attribute-identifier')
  final String? attributeIdentifier;
  @MappableField(key: 'attribute-value')
  final String? attributeValue;
  @MappableField(key: 'in-use')
  final bool? inUse;
  @MappableField(key: 'is-disabled')
  final bool? isDisabled;
  @MappableField(key: 'is-popular')
  final bool? isPopular;
  @MappableField(key: 'min-price')
  final num? minPrice;
  @MappableField(key: 'result-count')
  final int? resultCount;

  static FilterAttribute fromJson(Map<String, dynamic> json) =>
      FilterAttributeMapper.ensureInitialized().decodeMap<FilterAttribute>(
        json,
      );
}
