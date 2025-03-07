part of 'remote_data_bloc.dart';

sealed class _RemoteDataEvent {
  const _RemoteDataEvent();
}

// ignore: prefer-match-file-name, parent class has proper name.
final class RemoteDataStarted extends _RemoteDataEvent {
  const RemoteDataStarted();
}

final class RemoteDataRefreshed extends _RemoteDataEvent {
  const RemoteDataRefreshed();
}
