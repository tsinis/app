import 'package:drift/drift.dart';
import 'package:rest_api/hotels_api.dart';

import '../database/app_database.dart';
import '../helpers/extensions/hotel_to_companion_extension.dart';
import '../table/hotel_table.dart';

part 'hotel_dao.g.dart';

@DriftAccessor(tables: [HotelTable])
class HotelDao extends DatabaseAccessor<AppDatabase> with _$HotelDaoMixin {
  HotelDao(super.attachedDatabase);

  Future<int> insertHotel(Hotel hotel) => into(
    hotelTable, // Code generated from drift_dev.
  ).insert(hotel.toCompanion(), mode: InsertMode.insertOrReplace);

  Future<int> deleteHotel(String id) =>
      (delete(hotelTable)..where((hotel) => hotel.hotelId.equals(id))).go();

  Future<List<Hotel>> get readAllHotels => select(hotelTable).get();
}
