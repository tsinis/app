// ignore_for_file: avoid-non-empty-constructor-bodies

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart' show DioAdapter;

import 'src/export.dart';

export 'package:dio/dio.dart';

export 'src/bloc/remote_data_bloc.dart';
export 'src/export.dart';
export 'src/mappers/model_mapper.dart';
export 'src/repository/remote_data_repository.dart';

sealed class HotelsApi {
  /// `BASE_URL` environment variable.
  static const envBaseUrl = String.fromEnvironment(envBaseUrlKey);
  static const envBaseUrlKey = 'BASE_URL';
  static const _route = '/hotels.json';
}

@immutable
// ignore: prefer-single-declaration-per-file, it's a helper class.
class AdaptedDio {
  const AdaptedDio._(this._adapter, this.dio, [ApiResponse? _response])
    : _response = _response;

  factory AdaptedDio.web() {
    final dio = Dio();
    final adapter = DioAdapter(dio: dio);
    final clonedDio = dio.clone(httpClientAdapter: adapter);

    return AdaptedDio._(adapter, clonedDio, _defaultWebResponse);
  }

  @visibleForTesting
  factory AdaptedDio.test([Dio? mockedDio]) {
    final dio = mockedDio ?? Dio();
    final adapter = DioAdapter(dio: dio);
    final clonedDio = dio.clone(httpClientAdapter: adapter);

    return AdaptedDio._(adapter, clonedDio);
  }

  final Dio dio;
  final DioAdapter _adapter;
  final ApiResponse? _response; // TODO! Provide response for web platform.

  @visibleForTesting
  void reply(ApiResponse? response, {int statusCode = 200}) => _adapter.onGet(
    HotelsApi._route,
    (request) => request.reply(statusCode, (_response ?? response)?.toJson()),
  );

  static const _defaultWebResponse = ApiResponse();
}
