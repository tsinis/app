import 'dart:collection' show UnmodifiableListView;

import 'package:bloc/bloc.dart';

import '../repository/remote_data_repository.dart';
import 'hotel_data_state.dart';

part 'remote_data_event.dart';

/// A BLoC that manages the state of remote data fetching operations.
///
/// This BLoC handles events for starting and refreshing data fetching, and
/// manages the state transitions.
class RemoteDataBloc<T extends Object>
    extends Bloc<RemoteDataEvent, HotelDataState<T>> {
  /// Creates an instance of [RemoteDataBloc] with the a [RemoteDataRepository].
  RemoteDataBloc(this._remoteRepository)
    : super(RemoteDataInitial<T>(data: UnmodifiableListView<T>(const []))) {
    on<RemoteDataEvent>(_onEvent);
  }

  final RemoteDataRepository<T> _remoteRepository;

  Future<void> _onEvent(
    RemoteDataEvent event,
    Emitter<HotelDataState<T>> emit,
  ) => switch (event) {
    RemoteDataStarted() => _fetch(emit, UnmodifiableListView<T>(const [])),
    RemoteDataRefreshed() => _fetch(emit),
  };

  Future<void> _fetch(
    Emitter<HotelDataState<T>> emit, [
    UnmodifiableListView<T>? data,
  ]) async {
    if (state is RemoteDataInProgress) return;

    emit(RemoteDataInProgress(data: data ?? state.data));
    final remoteHotels = await _remoteRepository.fetchHotels;

    if (remoteHotels == null) return emit(RemoteDataFailure(data: state.data));
    final initialData = _remoteRepository.initialData(remoteHotels);

    if (_remoteRepository.initLimit >= remoteHotels.length) {
      emit(RemoteDataInitial(data: initialData));
    } else {
      emit(RemoteDataInProgress(data: initialData));
      final allData = await _remoteRepository.allData(remoteHotels);
      emit(RemoteDataInitial(data: allData));
    }
  }
}
