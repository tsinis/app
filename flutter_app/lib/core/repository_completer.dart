// ignore_for_file: prefer-typedefs-for-callbacks

import 'dart:async';
import 'dart:io';

import 'storage_repository.dart';

class RepositoryCompleter implements Completer<StorageRepository?> {
  RepositoryCompleter({FutureOr<StorageRepository?> Function()? initializer})
    : _onInit = initializer;

  final FutureOr<StorageRepository?> Function()? _onInit;
  final _completer = Completer<StorageRepository?>();

  bool _isInitializationStarted = false;

  void initialize() {
    if (_isInitializationStarted) return;
    _isInitializationStarted = true;

    Future(() async {
      try {
        // ignore: inference_failure_on_instance_creation, TODO! Remove this.
        await Future<void>.delayed(Duration.zero);
        final repository =
            _onInit == null
                ? StorageRepository(Directory.current)
                : await _onInit();

        if (isCompleted) return;
        complete(repository);
      } catch (error) {
        if (!isCompleted) completeError(error); // TODO! Log errors.
      }
    });
  }

  @override
  Future<StorageRepository?> get future => _completer.future;

  @override
  bool get isCompleted => _completer.isCompleted;

  @override
  void complete([FutureOr<StorageRepository?>? value]) =>
      _completer.complete(value);

  @override
  void completeError(Object error, [StackTrace? stackTrace]) =>
      _completer.completeError(error, stackTrace);
}
