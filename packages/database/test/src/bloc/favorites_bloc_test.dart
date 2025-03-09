// ignore_for_file: avoid-unsafe-collection-methods, avoid-similar-names

import 'dart:collection' show UnmodifiableListView;

import 'package:bloc_test/bloc_test.dart';
import 'package:database/database.dart' hide isNotNull;
import 'package:database/src/bloc/favorites_bloc.dart';
import 'package:database/src/database/app_database.dart';
import 'package:drift/drift.dart' hide isNotNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rest_api/hotels_api.dart';

void main() => group('$FavoritesBloc', () {
  const waitDuration = Duration.zero;
  late AppDatabase database;

  final hotel1 = hotels.first;
  final hotel2 = hotels[1];
  final hotel3 = hotels[2];
  final hotel4 = hotels[3];

  setUp(
    () => database = AppDatabase(DatabaseConnection(NativeDatabase.memory())),
  );

  tearDown(() async {
    await database.close();
  });

  blocTest<FavoritesBloc, HotelDataState<Hotel>>(
    'initial state is empty RemoteDataInitial',
    build: () => FavoritesBloc(database),
    expect: () => isEmpty,
  );

  blocTest<FavoritesBloc, HotelDataState<Hotel>>(
    'refresh emits RemoteDataInProgress then RemoteDataInitial with empty '
    'data when no favorites',
    act: (bloc) => bloc.add(const FavoritesRefreshed(delay: waitDuration)),
    build: () => FavoritesBloc(database),
    expect:
        () => [
          RemoteDataInProgress(data: UnmodifiableListView<Hotel>(const [])),
          RemoteDataInitial(data: UnmodifiableListView<Hotel>(const [])),
        ],
    wait: waitDuration,
  );

  group('with pre-existing favorites in database', () {
    setUp(() async {
      await database.hotelDao.insertHotel(hotel1);
      await database.hotelDao.insertHotel(hotel2);
    });

    blocTest<FavoritesBloc, HotelDataState<Hotel>>(
      'refresh loads hotels from database',
      act: (bloc) => bloc.add(const FavoritesRefreshed()),
      build: () => FavoritesBloc(database),
      expect:
          () => [
            RemoteDataInProgress(data: UnmodifiableListView<Hotel>(const [])),
            RemoteDataInitial(data: UnmodifiableListView([hotel1, hotel2])),
          ],
      verify: (bloc) {
        final hotelIds = bloc.state.data?.map((i) => i.hotelId).toSet();
        expect(hotelIds?.contains(hotel1.hotelId), isTrue);
        expect(hotelIds?.contains(hotel2.hotelId), isTrue);
      },
      wait: waitDuration,
    );

    blocTest<FavoritesBloc, HotelDataState<Hotel>>(
      'add favorite emits new state with hotel added and persists to database',
      act: (bloc) => bloc.add(FavoritesAdded(hotel: hotel3)),
      build: () => FavoritesBloc(database, [hotel1, hotel2]),
      expect:
          () => [
            RemoteDataInitial(
              data: UnmodifiableListView([hotel1, hotel2, hotel3]),
            ),
          ],
      verify: (bloc) async {
        expect(
          bloc.state.data?.map((i) => i.hotelId).contains(hotel3.hotelId),
          isTrue,
        );

        final databaseHotels = await database.hotelDao.readAllHotels();
        expect(databaseHotels.length, 3);
        expect(
          databaseHotels.map((i) => i.hotelId).contains(hotel3.hotelId),
          isTrue,
        );
      },
      wait: waitDuration,
    );

    blocTest<FavoritesBloc, HotelDataState<Hotel>>(
      'remove favorite emits new state with hotel removed and removes from db',
      act: (bloc) {
        bloc.add(FavoritesRemoved(hotel: hotel1));
      },
      build: () => FavoritesBloc(database, [hotel1, hotel2]),
      expect:
          () => [
            RemoteDataInitial(data: UnmodifiableListView([hotel2])),
          ],
      verify: (bloc) async {
        expect(
          bloc.state.data?.map((i) => i.hotelId).contains(hotel1.hotelId),
          false,
        );
        expect(bloc.state.data?.firstOrNull?.hotelId, hotel2.hotelId);

        final databaseHotels = await database.hotelDao.readAllHotels();
        expect(databaseHotels.length, 1);
        expect(
          databaseHotels.map((i) => i.hotelId).contains(hotel1.hotelId),
          false,
        );
        expect(databaseHotels.first.hotelId, hotel2.hotelId);
      },
      wait: waitDuration,
    );
  });

  group('complex operations', () {
    blocTest<FavoritesBloc, HotelDataState<Hotel>>(
      'performs multiple operations in sequence',
      act: (bloc) async {
        bloc.add(const FavoritesRefreshed());
        await Future<void>.delayed(waitDuration);

        bloc.add(FavoritesAdded(hotel: hotel1));
        await Future<void>.delayed(waitDuration);

        bloc.add(FavoritesAdded(hotel: hotel2));
        await Future<void>.delayed(waitDuration);

        bloc.add(FavoritesRemoved(hotel: hotel1));
        await Future<void>.delayed(waitDuration);

        bloc.add(FavoritesAdded(hotel: hotel3));
        await Future<void>.delayed(waitDuration);

        bloc.add(FavoritesAdded(hotel: hotel4));
        await Future<void>.delayed(waitDuration);
      },
      build: () => FavoritesBloc(database),
      expect:
          () => [
            RemoteDataInProgress(data: UnmodifiableListView<Hotel>(const [])),
            RemoteDataInitial(data: UnmodifiableListView<Hotel>(const [])),
            RemoteDataInitial(data: UnmodifiableListView([hotel1])),
            RemoteDataInitial(data: UnmodifiableListView([hotel1, hotel2])),
            RemoteDataInitial(data: UnmodifiableListView([hotel2])),
            RemoteDataInitial(data: UnmodifiableListView([hotel2, hotel3])),
            RemoteDataInitial(
              data: UnmodifiableListView([hotel2, hotel3, hotel4]),
            ),
          ],
      verify: (bloc) async {
        final hotelIds = bloc.state.data?.map((i) => i.hotelId).toSet();
        expect(hotelIds?.contains(hotel1.hotelId), isFalse);
        expect(hotelIds?.contains(hotel2.hotelId), isTrue);
        expect(hotelIds?.contains(hotel3.hotelId), isTrue);
        expect(hotelIds?.contains(hotel4.hotelId), isTrue);

        final databaseHotels = await database.hotelDao.readAllHotels();
        final dbHotelIds = databaseHotels.map((i) => i.hotelId).toSet();
        expect(dbHotelIds, equals(hotelIds));
      },
      wait: waitDuration,
    );

    blocTest<FavoritesBloc, HotelDataState<Hotel>>(
      'ensures hotel uniqueness when adding same hotel multiple times',
      act: (bloc) async {
        bloc.add(const FavoritesRefreshed());
        await Future<void>.delayed(waitDuration);

        bloc.add(FavoritesAdded(hotel: hotel1));
        await Future<void>.delayed(waitDuration);

        bloc.add(FavoritesAdded(hotel: hotel1));
        await Future<void>.delayed(waitDuration);

        final modifiedHotel1 = Hotel(
          destination: 'Modified Destination',
          hotelId: hotel1.hotelId,
          name: 'Modified Name',
        );
        bloc.add(FavoritesAdded(hotel: modifiedHotel1));
      },
      build: () => FavoritesBloc(database),
      expect:
          () => [
            RemoteDataInProgress(data: UnmodifiableListView<Hotel>(const [])),
            RemoteDataInitial(data: UnmodifiableListView<Hotel>(const [])),
            RemoteDataInitial(data: UnmodifiableListView([hotel1])),
          ],
      wait: waitDuration,
    );

    blocTest<FavoritesBloc, HotelDataState<Hotel>>(
      'refresh overwrites in-memory state with database state',
      act: (bloc) async {
        bloc.add(const FavoritesRefreshed());
        await Future<void>.delayed(waitDuration);

        bloc.add(FavoritesAdded(hotel: hotel1));
        await Future<void>.delayed(waitDuration);

        bloc.add(FavoritesAdded(hotel: hotel2));
        await Future<void>.delayed(waitDuration);

        await database.hotelDao.deleteHotel(hotel1.hotelId);
        await database.hotelDao.insertHotel(hotel3);

        bloc.add(const FavoritesRefreshed());
      },
      build: () => FavoritesBloc(database),
      expect:
          () => [
            RemoteDataInProgress(data: UnmodifiableListView<Hotel>(const [])),
            RemoteDataInitial(data: UnmodifiableListView<Hotel>(const [])),
            RemoteDataInitial(data: UnmodifiableListView([hotel1])),
            RemoteDataInitial(data: UnmodifiableListView([hotel1, hotel2])),
            RemoteDataInProgress(data: UnmodifiableListView([hotel1, hotel2])),
            RemoteDataInitial(data: UnmodifiableListView([hotel2, hotel3])),
          ],
      verify: (bloc) {
        final hotelIds = bloc.state.data?.map((i) => i.hotelId).toSet();
        expect(hotelIds?.contains(hotel1.hotelId), isFalse);
        expect(hotelIds?.contains(hotel2.hotelId), isTrue);
        expect(hotelIds?.contains(hotel3.hotelId), isTrue);
      },
      wait: waitDuration,
    );
  });
});
