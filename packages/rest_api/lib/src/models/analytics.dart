// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'select_item.dart';

part 'analytics.mapper.dart';

@MappableClass()
class Analytics with AnalyticsMappable {
  const Analytics({this.object0});

  @MappableField(key: 'select_item.item.0')
  final SelectItem? object0;

  static Analytics fromJson(Map<String, dynamic> json) =>
      AnalyticsMapper.ensureInitialized().decodeMap<Analytics>(json);
}
