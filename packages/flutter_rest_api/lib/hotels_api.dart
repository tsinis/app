export 'package:dio/dio.dart';

export 'src/bloc/remote_data_bloc.dart';
export 'src/export.dart';
export 'src/mappers/model_mapper.dart';
export 'src/repository/remote_data_repository.dart';

sealed class HotelsApi {
  /// `BASE_URL` environment variable.
  static const envBaseUrlKey = 'BASE_URL';
  static const envBaseUrl = String.fromEnvironment(envBaseUrlKey);
}
