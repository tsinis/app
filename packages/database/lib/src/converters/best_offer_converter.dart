import 'package:drift/drift.dart';
import 'package:rest_api/hotels_api.dart';

class BestOfferConverter extends TypeConverter<BestOffer, String>
    with JsonTypeConverter2<BestOffer, String, Map<String, dynamic>> {
  const BestOfferConverter();

  @override
  BestOffer fromSql(String fromDb) => BestOfferMapper.fromJson(fromDb);

  @override
  String toSql(BestOffer value) => value.toJsonString();

  @override
  BestOffer fromJson(Map<String, dynamic> json) =>
      BestOfferMapper.fromMap(json);

  @override
  Map<String, dynamic> toJson(BestOffer value) => value.toJson();
}
