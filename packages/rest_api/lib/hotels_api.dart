// ignore_for_file: avoid-non-empty-constructor-bodies

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show immutable, visibleForTesting;
import 'package:http_mock_adapter/http_mock_adapter.dart' show DioAdapter;

import 'src/export.dart';

export 'package:dio/dio.dart';

export 'src/bloc/remote_data_bloc.dart';
export 'src/export.dart';
export 'src/mappers/model_mapper.dart';
export 'src/repository/remote_data_repository.dart';

sealed class HotelsApi {
  /// `BASE_URL` environment variable. Web platform is an exception due to CORS.
  static const baseUrl = String.fromEnvironment('BASE_URL');
  static const isBaseUrlProvided = baseUrl.length > 0;

  static const _route = '/hotels.json';
}

@immutable
// ignore: prefer-single-declaration-per-file, it's a helper class.
final class AdaptedDio {
  factory AdaptedDio() {
    final dio = Dio();
    final adapter = DioAdapter(dio: dio);
    final clonedDio = dio.clone(httpClientAdapter: adapter);

    return AdaptedDio._(adapter, clonedDio)..reply(_defaultResponse);
  }

  const AdaptedDio._(this._adapter, this.dio);

  @visibleForTesting
  factory AdaptedDio.test([Dio? mockedDio]) {
    final dio = mockedDio ?? Dio();
    final adapter = DioAdapter(dio: dio);

    return AdaptedDio._(adapter, dio.clone(httpClientAdapter: adapter));
  }

  final Dio dio;
  final DioAdapter _adapter;

  @visibleForTesting
  void reply(ApiResponse? response, {int statusCode = 200}) => _adapter.onGet(
    HotelsApi._route,
    (request) => request.reply(statusCode, response?.toJson()),
  );

  static const _defaultResponse = ApiResponse(
    hotels: [Hotel(name: 'name')],
  ); // TODO! Response for web.
}
