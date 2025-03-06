// ignore_for_file: avoid-duplicate-cascades
// ignore_for_file: inference_failure_on_instance_creation, cascade_invocations

import 'dart:io';

import 'package:app/core/repository_completer.dart';
import 'package:app/core/storage_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() => group('$RepositoryCompleter', () {
  test('should expose a Future', () {
    final completer = RepositoryCompleter();

    expect(completer.future, isA<Future<StorageRepository?>>());
  });

  test('should not be completed initially', () {
    final completer = RepositoryCompleter();

    expect(completer.isCompleted, isFalse);
  });

  test('should complete with repository when initialized', () async {
    final completer = RepositoryCompleter(
      initializer: () => StorageRepository(Directory.systemTemp),
    )..initialize();

    final repository = await completer.future;
    expect(repository, isA<StorageRepository>());
    expect(completer.isCompleted, isTrue);
  });

  test(
    'should use default repository when no initializer is provided',
    () async {
      final completer = RepositoryCompleter()..initialize();

      final repository = await completer.future;
      expect(repository, isA<StorageRepository>());
    },
  );

  test('initializing multiple times has no effect', () async {
    int callCount = 0;
    final completer = RepositoryCompleter(
      initializer: () {
        callCount += 1;

        return StorageRepository(Directory.systemTemp);
      },
    );

    completer
      ..initialize()
      ..initialize()
      ..initialize();

    await completer.future;
    expect(
      callCount,
      equals(1),
      reason: 'Initializer should be called exactly once',
    );
  });

  test('should allow manual completion', () async {
    final completer = RepositoryCompleter();
    final testRepo = StorageRepository(Directory.systemTemp);

    completer.complete(testRepo);

    expect(completer.isCompleted, isTrue);
    expect(await completer.future, equals(testRepo));
  });

  test('should allow manual error completion', () {
    final completer = RepositoryCompleter();
    final testError = Exception('Manual error');

    completer.completeError(testError);

    expect(completer.isCompleted, isTrue);
    expect(completer.future, throwsA(equals(testError)));
  });
});
