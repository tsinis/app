// ignore_for_file: avoid-local-functions, prefer-extracting-function-callbacks
// ignore_for_file: avoid-recursive-calls

import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rest_api/hotels_api.dart' show HotelsApi;
import 'package:rest_api/src/clients/client_http.dart';
import 'package:rest_api/src/models/api_response.dart';
import 'package:test/test.dart';

void main() => group('Schema contract with back-end testing', () {
  String padLeft(int date) => '-$date'.padLeft(2, '0');

  Map<T, Object> sortJsonMap<T extends String>(Map<T, Object?> unsortedMap) {
    final map = SplayTreeMap<T, Object?>.from(unsortedMap);
    final keysWithNullValues = <T>{};

    map.forEach((key, value) {
      switch (value) {
        case null:
          // Reference: https://github.com/schultek/dart_mappable/issues/105.
          keysWithNullValues.add(key);

        case final Map<T, Object?> mapValue:
          map[key] = sortJsonMap(mapValue);

        case final List<Object?> listValue:
          map[key] = listValue
              .map((i) => i is Map<T, Object?> ? sortJsonMap(i) : i)
              .toList(growable: false);

        case final T string when key.endsWith('-date'):
          // Reference: https://github.com/schultek/dart_mappable/issues/206.
          final date = DateTime.tryParse(string)?.toLocal();
          if (date != null) {
            map[key] = '${date.year}${padLeft(date.month)}${padLeft(date.day)}';
          }
      }
    });
    keysWithNullValues.forEach(map.remove);

    return Map<T, Object>.unmodifiable(map);
  }

  test(
    'from empty data',
    () => expect(ApiResponse.fromJson(const {}), isNotNull),
  );

  test('compare response payload with $ApiResponse model output', () {
    final originalJson = File('assets/response.json').readAsStringSync();
    // ignore: avoid-type-casts, it's just a unit test.
    final originalMap = jsonDecode(originalJson) as Map<String, Object?>;

    final typedResponse = ApiResponse.fromJson(originalMap);
    final deserializedMap = typedResponse.toJson();

    final sortedDeserialized = jsonEncode(sortJsonMap(deserializedMap));
    final sortedOriginal = jsonEncode(sortJsonMap(originalMap));

    expect(sortedOriginal, sortedDeserialized);
  });

  test(
    'non-mocked, via `flutter test --dart-define=BASE_URL=https://example.com`',
    () async {
      final client = ClientHttp(Dio(), baseUrl: HotelsApi.platformBaseUrl);
      final result = await client.getHotels();
      expect(result.data, isNotNull);

      expect(result.data?.hotelCount, isNot(result.data?.hotels?.length));
    },
    skip: !HotelsApi.isBaseUrlProvided,
  );
});
