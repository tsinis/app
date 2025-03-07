// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'agent.dart';
import 'scarcity_element.dart';

part 'meta.mapper.dart';

@MappableClass()
class Meta with MetaMappable {
  const Meta({this.agent, this.count, this.scarcityElements});

  final Agent? agent;
  final int? count;
  @MappableField(key: 'scarcity-elements')
  final List<ScarcityElement?>? scarcityElements;

  static Meta fromJson(Map<String, dynamic> json) =>
      MetaMapper.ensureInitialized().decodeMap<Meta>(json);
}
