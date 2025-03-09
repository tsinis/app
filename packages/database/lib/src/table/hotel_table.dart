// ignore: format-comment, we are not planning to test how drift code-gen works.
// coverage:ignore-file
import 'package:drift/drift.dart';
import 'package:rest_api/hotels_api.dart';

import '../converters/best_offer_converter.dart';
import '../converters/list_api_image_converter.dart';
import '../converters/rating_info_converter.dart';

@UseRowClass(Hotel) // Not ideal, but for DB schema v1 it's fine (can explain).
class HotelTable extends Table {
  const HotelTable();

  @override
  Set<Column> get primaryKey => {hotelId};

  TextColumn get hotelId => text()();
  TextColumn get bestOffer =>
      text().map(const BestOfferConverter()).nullable()();
  TextColumn get destination => text().nullable()();
  TextColumn get images =>
      text().map(const ListApiImageConverter()).nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get ratingInfo =>
      text().map(const RatingInfoConverter()).nullable()();
}
