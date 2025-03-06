// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'filter_attribute.dart';
import 'filter_type.dart';
import 'range.dart';

part 'filter.mapper.dart';

@MappableClass()
class Filter with FilterMappable {
  const Filter({
    this.attributes,
    this.category,
    this.inUse,
    this.type,
    this.range,
  });

  final List<FilterAttribute?>? attributes;
  final String? category;
  @MappableField(key: 'in-use')
  final bool? inUse;
  final FilterType? type;
  final Range? range;

  static Filter fromJson(Map<String, dynamic> json) =>
      FilterMapper.ensureInitialized().decodeMap<Filter>(json);
}
