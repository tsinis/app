// ignore_for_file: avoid-local-functions, prefer-extracting-function-callbacks
// ignore_for_file: avoid-recursive-calls

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rest_api/hotels_api.dart' show HotelsApi;
import 'package:rest_api/src/clients/client_http.dart';
import 'package:rest_api/src/models/api_response.dart';
import 'package:test/test.dart';

void main() => group('Schema contract with back-end testing', () {
  test(
    'from empty data',
    () => expect(ApiResponse.fromJson(const {}), isNotNull),
  );

  test('compare response payload with $ApiResponse model output', () {
    final originalJson = File('assets/response.json').readAsStringSync();
    // ignore: avoid-type-casts, it's just a unit test.
    final originalMap = jsonDecode(originalJson) as Map<String, Object?>;
    final typedResponse = ApiResponse.fromJson(originalMap);

    expect(typedResponse.hotels, isNotEmpty);
  });

  test(
    'non-mocked, via `flutter test --dart-define=BASE_URL=https://example.com`',
    () async {
      final client = ClientHttp(Dio(), baseUrl: HotelsApi.baseUrl);
      final result = await client.getHotels();
      final hotels = result.data?.hotels ?? const [];
      expect(hotels, isNotEmpty);

      final hotelIds = <String>{};
      for (final hotel in hotels) {
        final id = hotel?.hotelId ?? '';
        if (id.isNotEmpty) {
          expect(hotelIds.contains(id), isFalse, reason: '$id is not unique');
          hotelIds.add(id);
        } else {
          fail('Found a hotel with null/empty ID');
        }
      }

      expect(hotelIds.length, equals(hotels.length), reason: 'IDs are unique');
    },
    skip: !HotelsApi.isBaseUrlProvided,
  );
});
