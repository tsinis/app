import 'package:rest_api/hotels_api.dart';

/// Run as:
/// ```shell
/// dart run --define=BASE_URL=https://example.com bin/rest_api.dart
/// ```
Future<ApiResponse?> main() async {
  final client = ClientHttp(Dio(), baseUrl: HotelsApi.envBaseUrl);

  try {
    final result = await client.getHotels();
    final totalCount = result.data?.hotelCount;
    final actualCount = result.data?.hotels?.nonNulls.length;
    // ignore: avoid_print, it's just an example for remote validation.
    print('They are ${totalCount == actualCount ? 'equal' : 'different'}');

    return result.data;
  } on DioException catch (_) {
    return null;
  }
}
