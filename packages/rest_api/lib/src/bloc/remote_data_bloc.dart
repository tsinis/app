import 'dart:collection' show UnmodifiableListView;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

import '../repository/remote_data_repository.dart';

part 'remote_data_event.dart';
part 'remote_data_state.dart';

class RemoteDataBloc<T extends Object>
    extends Bloc<_RemoteDataEvent, RemoteDataState<T>> {
  RemoteDataBloc(this._remoteRepository)
    : super(RemoteDataInitial<T>(data: UnmodifiableListView<T>(const []))) {
    on<_RemoteDataEvent>(_onEvent);
  }

  final RemoteDataRepository<T> _remoteRepository;

  Future<void> _onEvent(
    _RemoteDataEvent event,
    Emitter<RemoteDataState<T>> emit,
  ) => switch (event) {
    RemoteDataStarted() => _fetch(emit, UnmodifiableListView<T>(const [])),
    RemoteDataRefreshed() => _fetch(emit),
  };

  Future<void> _fetch(
    Emitter<RemoteDataState<T>> emit, [
    UnmodifiableListView<T>? data,
  ]) async {
    if (state is RemoteDataInProgress) return;

    emit(RemoteDataInProgress(data: data ?? state.data));
    final remoteHotels = await _remoteRepository.fetchHotels;

    if (remoteHotels == null) return emit(RemoteDataFailure(data: state.data));
    final initialData = _remoteRepository.initialData(remoteHotels);

    if (remoteHotels.length >= _remoteRepository.initLimit) {
      emit(RemoteDataInitial(data: initialData));
    } else {
      emit(RemoteDataInProgress(data: initialData));
      final allData = await _remoteRepository.allData(remoteHotels);
      emit(RemoteDataInitial(data: allData));
    }
  }
}
