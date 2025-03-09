import 'package:drift/drift.dart';
import 'package:rest_api/hotels_api.dart';

class RatingInfoConverter extends TypeConverter<RatingInfo, String>
    with JsonTypeConverter2<RatingInfo, String, Map<String, dynamic>> {
  const RatingInfoConverter();

  @override
  RatingInfo fromSql(String fromDb) => RatingInfoMapper.fromJson(fromDb);

  @override
  String toSql(RatingInfo value) => value.toJsonString();

  @override
  RatingInfo fromJson(Map<String, dynamic> json) =>
      RatingInfoMapper.fromMap(json);

  @override
  Map<String, dynamic> toJson(RatingInfo value) => value.toJson();
}
