// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'attributes.mapper.dart';

@MappableClass()
class Attributes with AttributesMappable {
  const Attributes({this.id, this.name, this.value, this.isUnique});

  final String? id;
  final String? name;
  final String? value;
  @MappableField(key: 'is-unique')
  final bool? isUnique;

  static Attributes fromJson(Map<String, dynamic> json) =>
      AttributesMapper.ensureInitialized().decodeMap<Attributes>(json);
}
