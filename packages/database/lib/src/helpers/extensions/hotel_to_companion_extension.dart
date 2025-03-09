import 'package:drift/drift.dart';
import 'package:rest_api/hotels_api.dart';

import '../../database/app_database.dart';

extension HotelToCompanionExtension on Hotel {
  HotelTableCompanion toCompanion() => HotelTableCompanion.insert(
    bestOffer: Value(bestOffer),
    destination: Value(destination),
    hotelId: hotelId,
    images: Value(images),
    name: Value(name),
    ratingInfo: Value(ratingInfo),
  );
}
