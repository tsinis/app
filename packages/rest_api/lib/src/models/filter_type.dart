// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'filter_type.mapper.dart';

/// Type of filter, restricted to known options ('checkbox', 'range', 'radio') for improved validation.
@MappableEnum()
enum FilterType {
  @MappableValue('checkbox')
  checkbox,

  @MappableValue('range')
  range,

  @MappableValue('radio')
  radio,
}
