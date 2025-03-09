part of 'remote_data_bloc.dart';

sealed class RemoteDataEvent {
  const RemoteDataEvent();
}

final class RemoteDataStarted extends RemoteDataEvent {
  const RemoteDataStarted();
}

final class RemoteDataRefreshed extends RemoteDataEvent {
  const RemoteDataRefreshed();
}
