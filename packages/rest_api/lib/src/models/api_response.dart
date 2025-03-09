// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'hotel.dart';

part 'api_response.mapper.dart';

@MappableClass()
class ApiResponse with ApiResponseMappable {
  const ApiResponse({this.hotels});

  final List<Hotel?>? hotels;

  static ApiResponse fromJson(Map<String, dynamic> json) =>
      ApiResponseMapper.ensureInitialized().decodeMap<ApiResponse>(json);
}
