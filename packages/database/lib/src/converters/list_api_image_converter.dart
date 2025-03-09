import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:log/logger.dart';
import 'package:rest_api/hotels_api.dart';

/// A type converter for handling lists of [ApiImage] objects in a Drift DB.
///
/// This converter provides methods for converting between SQL and JSON
/// representations of the data.
class ListApiImageConverter extends TypeConverter<List<ApiImage?>?, String?>
    with
        LoggerMixin,
        JsonTypeConverter2<
          List<ApiImage?>?,
          String?,
          List<Map<String, dynamic>?>
        > {
  /// Creates an instance of [ListApiImageConverter].
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
    } catch (error, stackTrace) {
      log.severe('Failed to parse images from SQL!', error, stackTrace);

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
