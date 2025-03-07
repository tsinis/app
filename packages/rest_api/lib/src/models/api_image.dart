// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'api_image.mapper.dart';

@MappableClass()
class ApiImage with ApiImageMappable {
  const ApiImage({this.large, this.small});

  final String? large;
  final String? small;

  static ApiImage fromJson(Map<String, dynamic> json) =>
      ApiImageMapper.ensureInitialized().decodeMap<ApiImage>(json);
}
