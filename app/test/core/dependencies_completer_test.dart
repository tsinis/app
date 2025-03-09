// ignore_for_file: avoid-duplicate-cascades
// ignore_for_file: inference_failure_on_instance_creation, cascade_invocations

import 'package:app/core/core_dependencies.dart';
import 'package:app/core/dependencies_completer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rest_api/hotels_api.dart';

void main() => group('$DependenciesCompleter', () {
  test('should expose a Future', () {
    final completer = DependenciesCompleter();

    expect(completer.future, isA<Future<CoreDependencies?>>());
  });

  test('should not be completed initially', () {
    final completer = DependenciesCompleter();

    expect(completer.isCompleted, isFalse);
  });

  test('should complete with repository when initialized', () async {
    final completer = DependenciesCompleter(
      initializer: () async => CoreDependencies(ClientHttp(Dio())),
    )..initialize();

    final repository = await completer.future;
    expect(repository, isA<CoreDependencies>());
    expect(completer.isCompleted, isTrue);
  });

  test('initializing multiple times has no effect', () async {
    int callCount = 0;
    final completer = DependenciesCompleter(
      initializer: () async {
        callCount += 1;

        return CoreDependencies(ClientHttp(Dio()));
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
    final completer = DependenciesCompleter();
    final testRepo = CoreDependencies(ClientHttp(Dio()));

    completer.complete(testRepo);

    expect(completer.isCompleted, isTrue);
    expect(await completer.future, equals(testRepo));
  });

  test('should allow manual error completion', () {
    final completer = DependenciesCompleter();
    final testError = Exception('Manual error');

    completer.completeError(testError);

    expect(completer.isCompleted, isTrue);
    expect(completer.future, throwsA(equals(testError)));
  });
});
