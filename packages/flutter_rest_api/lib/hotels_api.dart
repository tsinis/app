export 'package:dio/dio.dart';

export 'src/export.dart';

sealed class HotelsApi {
  /// `BASE_URL` environment variable.
  static const envBaseUrlKey = 'BASE_URL';
  static const envBaseUrl = String.fromEnvironment(envBaseUrlKey);
}
