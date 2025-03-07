part of 'remote_data_bloc.dart';

@immutable
sealed class RemoteDataState<T extends Object> extends Equatable {
  const RemoteDataState({this.data});

  final UnmodifiableListView<T>? data;

  @override
  List<T?> get props => [...?data];
}

final class RemoteDataInitial<T extends Object> extends RemoteDataState<T> {
  const RemoteDataInitial({required UnmodifiableListView<T> super.data});
}

final class RemoteDataInProgress<T extends Object> extends RemoteDataState<T> {
  const RemoteDataInProgress({required super.data});
}

final class RemoteDataFailure<T extends Object> extends RemoteDataState<T> {
  const RemoteDataFailure({required super.data});
}
