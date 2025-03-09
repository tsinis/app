import 'dart:collection' show UnmodifiableListView;

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
sealed class HotelDataState<T extends Object> extends Equatable {
  const HotelDataState({this.data});

  final UnmodifiableListView<T>? data;

  @override
  List<T?> get props => [...?data];
}

final class RemoteDataInitial<T extends Object> extends HotelDataState<T> {
  const RemoteDataInitial({required UnmodifiableListView<T> super.data});
}

final class RemoteDataInProgress<T extends Object> extends HotelDataState<T> {
  const RemoteDataInProgress({required super.data});
}

final class RemoteDataFailure<T extends Object> extends HotelDataState<T> {
  const RemoteDataFailure({required super.data});
}
