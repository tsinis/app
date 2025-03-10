// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';

import '../models/api_response.dart';

part 'client_http.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class ClientHttp {
  factory ClientHttp(Dio dio, {String? baseUrl}) = _ClientHttp;

  /// Get hotels listing.
  ///
  /// Returns a list of hotels with their details.
  @GET('/hotels.json')
  Future<HttpResponse<ApiResponse?>> getHotels();
}
