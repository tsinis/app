// ignore_for_file: avoid-collection-mutating-methods

import 'dart:async';
import 'dart:collection' show UnmodifiableListView;

import 'package:bloc/bloc.dart';
import 'package:log/logger.dart';
import 'package:rest_api/hotels_api.dart';

import '../database/app_database.dart';

part 'favorites_event.dart';

/// A BLoC that manages favorite hotels in the local database.
///
/// Similar to [RemoteDataBloc] but focused on favorite hotels stored locally.
class FavoritesBloc extends Bloc<FavoritesEvent, HotelDataState<Hotel>>
    with LoggerMixin {
  FavoritesBloc(this._database, [Iterable<Hotel>? initialData])
    : _favorites = initialData?.toSet() ?? {},
      super(RemoteDataInitial(data: UnmodifiableListView<Hotel>(const []))) {
    on<FavoritesEvent>(_onEvent);
  }

  final AppDatabase _database;
  final Set<Hotel> _favorites; // Set to track favorites with uniqueness.

  UnmodifiableListView<Hotel> get _data =>
      UnmodifiableListView(_favorites.toList());

  FutureOr<void> _onEvent(
    FavoritesEvent event,
    Emitter<HotelDataState<Hotel>> emit,
  ) => switch (event) {
    FavoritesRefreshed(:final delay) => _refresh(delay, emit),
    FavoritesAdded(:final hotel) => _addToFavs(emit, hotel),
    FavoritesRemoved(:final hotel) => _removeFromFavs(emit, hotel),
  };

  Future<void> _refresh(
    Duration? delay,
    Emitter<HotelDataState<Hotel>> emit,
  ) async {
    if (state is RemoteDataInProgress) return;
    // ignore: prefer-commenting-future-delayed, to relieve the thread.
    if (delay != null) await Future<void>.delayed(delay);

    emit(RemoteDataInProgress(data: state.data));
    final favorites = await tryOrLog(
      _database.hotelDao.readAllHotels,
      'reading favorites',
    );
    if (favorites == null) return emit(RemoteDataFailure(data: state.data));
    _favorites
      ..clear()
      ..addAll(favorites);

    emit(RemoteDataInitial(data: _data));
  }

  FutureOr<void> _addToFavs(Emitter<HotelDataState<Hotel>> emit, Hotel hotel) {
    if (_favorites.map((i) => i.hotelId).contains(hotel.hotelId)) return null;
    _favorites.add(hotel);
    emit(RemoteDataInitial(data: _data));
    unawaited(_database.hotelDao.insertHotel(hotel));
  }

  FutureOr<void> _removeFromFavs(
    Emitter<HotelDataState<Hotel>> emit,
    Hotel hotel,
  ) {
    _favorites.removeWhere((hot) => hot.hotelId == hotel.hotelId);
    emit(RemoteDataInitial(data: _data));
    unawaited(_database.hotelDao.deleteHotel(hotel.hotelId));
  }
}
