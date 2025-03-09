import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:rest_api/hotels_api.dart';

class ListApiImageConverter extends TypeConverter<List<ApiImage?>?, String?>
    with
        JsonTypeConverter2<
          List<ApiImage?>?,
          String?,
          List<Map<String, dynamic>?>
        > {
  const ListApiImageConverter();

  @override
  List<ApiImage?>? fromSql(String? fromDb) {
    final string = fromDb?.trim() ?? '';
    if (string.isEmpty) return null;
    try {
      // ignore: avoid-type-casts, due to the dynamic nature of `jsonDecode`.
      final list = jsonDecode(string) as List;

      return list.nonNulls
          .map(
            (i) =>
                (i is Map<String, dynamic>) ? ApiImageMapper.fromMap(i) : null,
          )
          .toList(growable: false);
    } catch (_) {
      return null;
    }
  }

  @override
  String toSql(List<ApiImage?>? value) {
    final nonNulls = value?.nonNulls ?? [];
    if (nonNulls.isEmpty) return '';

    return jsonEncode(nonNulls.map((i) => i.toJson()).toList(growable: false));
  }

  @override
  List<ApiImage?> fromJson(List<Map<String, dynamic>?> json) => json
      .map((i) => i == null ? null : ApiImageMapper.fromMap(i))
      .toList(growable: false);

  @override
  List<Map<String, dynamic>?> toJson(List<ApiImage?>? value) {
    final nonNulls = value?.nonNulls ?? [];
    if (nonNulls.isEmpty) return const [];

    return nonNulls.map((image) => image.toJson()).toList(growable: false);
  }
}
