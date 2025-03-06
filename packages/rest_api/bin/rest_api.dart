import 'package:rest_api/hotels_api.dart';

/// Run as:
/// ```shell
/// dart run --define=BASE_URL=https://example.com bin/rest_api.dart
/// ```
Future<ApiResponse?> main() async {
  final client = ClientHttp(Dio(), baseUrl: HotelsApi.envBaseUrl);

  try {
    final result = await client.getHotels();
    // ignore: avoid_print, it's just an example for remote validation.
    print('Parsed response is ${result.data == null ? 'null' : 'not null'}');

    return result.data;
  } on DioException catch (_) {
    return null;
  }
}
