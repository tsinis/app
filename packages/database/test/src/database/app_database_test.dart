// ignore_for_file: avoid-similar-names, avoid-unsafe-collection-methods

import 'dart:io';

import 'package:database/database.dart' hide isNotNull;
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rest_api/hotels_api.dart';

void main() => group('$AppDatabase', () {
  late AppDatabase database;

  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    driftRuntimeOptions.dontWarnAboutMultipleDatabases = true;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('plugins.flutter.io/path_provider'),
          (methodCall) async => '.',
        );
  });

  setUp(
    () => database = AppDatabase(DatabaseConnection(NativeDatabase.memory())),
  );

  tearDown(() async {
    await database.close();
  });

  test(
    'init',
    () async => expectLater(
      await AppDatabase.open(Directory.systemTemp),
      isA<AppDatabase>(),
    ),
  );

  group('$HotelDao', () {
    test('insert and read a single hotel', () async {
      const hotel = Hotel(
        destination: 'Mallorca, Spain',
        hotelId: 'test-hotel-1',
        images: [ApiImage(large: 'large', small: 'small')],
        name: 'Test Hotel',
        ratingInfo: RatingInfo(
          recommendationRate: 95,
          reviewsCount: 100,
          score: 4.5,
          scoreDescription: 'Excellent',
        ),
      );

      final rowsAffected = await database.hotelDao.insertHotel(hotel);
      expect(rowsAffected, 1);

      final hotels = await database.hotelDao.readAllHotels();
      expect(hotels, hasLength(1));
      expect(hotels.first.hotelId, hotel.hotelId);
      expect(hotels.first.name, hotel.name);
      expect(hotels.first.destination, hotel.destination);

      expect(
        hotels.first.ratingInfo?.recommendationRate,
        hotel.ratingInfo?.recommendationRate,
      );
      expect(
        hotels.first.ratingInfo?.reviewsCount,
        hotel.ratingInfo?.reviewsCount,
      );
      expect(hotels.first.ratingInfo?.score, hotel.ratingInfo?.score);
      expect(
        hotels.first.ratingInfo?.scoreDescription,
        hotel.ratingInfo?.scoreDescription,
      );

      expect(hotels.first.images?.length, hotel.images?.length);
    });

    test('insert multiple hotels and read all', () async {
      // ignore: prefer-for-in, we need index here.
      for (int i = 0; i < hotels.length; i += 1) {
        final hotel = hotels[i];
        final rowsAffected = await database.hotelDao.insertHotel(hotel);
        expect(rowsAffected, i + 1);
      }

      final storedHotels = await database.hotelDao.readAllHotels();

      expect(storedHotels.length, hotels.length);

      final storedIds = storedHotels.map((i) => i.hotelId).toSet();
      final originalIds = hotels.map((i) => i.hotelId).toSet();
      expect(storedIds, equals(originalIds));
    });

    test('delete a hotel', () async {
      final hotel = hotels.first;
      await database.hotelDao.insertHotel(hotel);

      List<Hotel> storedHotels = await database.hotelDao.readAllHotels();
      expect(storedHotels, hasLength(1));

      final rowsDeleted = await database.hotelDao.deleteHotel(hotel.hotelId);
      expect(rowsDeleted, 1);

      storedHotels = await database.hotelDao.readAllHotels();
      expect(storedHotels, isEmpty);
    });

    test('update a hotel by reinserting', () async {
      final originalHotel = hotels.first;
      await database.hotelDao.insertHotel(originalHotel);

      final updatedHotel = Hotel(
        bestOffer: originalHotel.bestOffer,
        destination: originalHotel.destination,
        hotelId: originalHotel.hotelId,
        images: originalHotel.images,
        name: 'Updated Hotel Name',
        ratingInfo: originalHotel.ratingInfo,
      );

      await database.hotelDao.insertHotel(updatedHotel);

      final storedHotels = await database.hotelDao.readAllHotels();
      expect(storedHotels, hasLength(1));
      expect(storedHotels.first.name, 'Updated Hotel Name');
    });

    test('test complex data integrity', () async {
      final complexHotel = hotels.first;

      await database.hotelDao.insertHotel(complexHotel);

      final storedHotels = await database.hotelDao.readAllHotels();
      final storedHotel = storedHotels.first;

      expect(storedHotel.hotelId, complexHotel.hotelId);
      expect(storedHotel.name, complexHotel.name);
      expect(storedHotel.destination, complexHotel.destination);

      expect(
        storedHotel.bestOffer?.simplePricePerPerson,
        complexHotel.bestOffer?.simplePricePerPerson,
      );
      expect(storedHotel.bestOffer?.total, complexHotel.bestOffer?.total);
      expect(
        storedHotel.bestOffer?.flightIncluded,
        complexHotel.bestOffer?.flightIncluded,
      );

      expect(
        storedHotel.bestOffer?.travelDate?.nights,
        complexHotel.bestOffer?.travelDate?.nights,
      );
      expect(
        storedHotel.bestOffer?.travelDate?.days,
        complexHotel.bestOffer?.travelDate?.days,
      );

      expect(storedHotel.ratingInfo?.score, complexHotel.ratingInfo?.score);
      expect(
        storedHotel.ratingInfo?.scoreDescription,
        complexHotel.ratingInfo?.scoreDescription,
      );
      expect(
        storedHotel.ratingInfo?.reviewsCount,
        complexHotel.ratingInfo?.reviewsCount,
      );

      expect(storedHotel.images?.length, complexHotel.images?.length);
      expect(
        storedHotel.images?.first?.large,
        complexHotel.images?.first?.large,
      );
      expect(
        storedHotel.images?.first?.small,
        complexHotel.images?.first?.small,
      );

      expect(
        storedHotel.bestOffer?.rooms?.overall?.boarding,
        complexHotel.bestOffer?.rooms?.overall?.boarding,
      );
      expect(
        storedHotel.bestOffer?.rooms?.overall?.name,
        complexHotel.bestOffer?.rooms?.overall?.name,
      );
    });

    test('insert all hotels and verify each field', () async {
      for (final hotel in hotels) {
        await database.hotelDao.insertHotel(hotel);
      }

      final storedHotels = await database.hotelDao.readAllHotels();
      expect(storedHotels.length, hotels.length);

      final storedHotelsMap = {
        for (final hotel in storedHotels) hotel.hotelId: hotel,
      };

      for (final originalHotel in hotels) {
        final storedHotel = storedHotelsMap[originalHotel.hotelId];
        expect(storedHotel, isNotNull);

        expect(storedHotel?.name, originalHotel.name);
        expect(storedHotel?.destination, originalHotel.destination);

        expect(
          storedHotel?.ratingInfo?.recommendationRate,
          originalHotel.ratingInfo?.recommendationRate,
        );
        expect(storedHotel?.ratingInfo?.score, originalHotel.ratingInfo?.score);

        expect(
          storedHotel?.bestOffer?.simplePricePerPerson,
          originalHotel.bestOffer?.simplePricePerPerson,
        );
        expect(
          storedHotel?.bestOffer?.flightIncluded,
          originalHotel.bestOffer?.flightIncluded,
        );

        expect(
          storedHotel?.images?.nonNulls.length,
          originalHotel.images?.nonNulls.length,
        );
      }
    });

    test('delete multiple hotels', () async {
      for (final hotel in hotels) {
        await database.hotelDao.insertHotel(hotel);
      }

      List<Hotel> storedHotels = await database.hotelDao.readAllHotels();
      expect(storedHotels, hasLength(4));

      await database.hotelDao.deleteHotel(hotels.first.hotelId);
      await database.hotelDao.deleteHotel(hotels[2].hotelId);

      storedHotels = await database.hotelDao.readAllHotels();
      expect(storedHotels, hasLength(2));

      final remainingIds = storedHotels.map((i) => i.hotelId).toSet();
      expect(remainingIds, contains(hotels[1].hotelId));
      expect(remainingIds, contains(hotels[3].hotelId));
      expect(remainingIds, isNot(contains(hotels.first.hotelId)));
      expect(remainingIds, isNot(contains(hotels[2].hotelId)));
    });

    test('edge case - overwrite hotel with same ID', () async {
      const hotel1 = Hotel(
        destination: 'Mallorca, Spain',
        hotelId: 'same-id',
        name: 'First Hotel',
      );

      const hotel2 = Hotel(
        destination: 'Different Location',
        hotelId: 'same-id',
        name: 'Second Hotel',
      );

      await database.hotelDao.insertHotel(hotel1);

      List<Hotel> storedHotels = await database.hotelDao.readAllHotels();
      expect(storedHotels, hasLength(1));
      expect(storedHotels.first.name, 'First Hotel');

      await database.hotelDao.insertHotel(hotel2);

      storedHotels = await database.hotelDao.readAllHotels();
      expect(storedHotels, hasLength(1));
      expect(storedHotels.first.name, 'Second Hotel');
      expect(storedHotels.first.destination, 'Different Location');
    });
  });
});
