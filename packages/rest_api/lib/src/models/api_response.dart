// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'filter.dart';
import 'hotel.dart';
import 'meta.dart';
import 'used_search_request.dart';

part 'api_response.mapper.dart';

@MappableClass()
class ApiResponse with ApiResponseMappable {
  const ApiResponse({
    this.filters,
    this.hotelCount,
    this.meta,
    this.hotels,
    this.usedSearchRequest,
  });

  final List<Filter?>? filters;
  @MappableField(key: 'hotel-count')
  final int? hotelCount;
  final Meta? meta;
  final List<Hotel?>? hotels;
  @MappableField(key: 'used-search-request')
  final UsedSearchRequest? usedSearchRequest;

  static ApiResponse fromJson(Map<String, dynamic> json) =>
      ApiResponseMapper.ensureInitialized().decodeMap<ApiResponse>(json);
}
