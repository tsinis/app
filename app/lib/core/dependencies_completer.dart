import 'dart:async';

import 'package:log/logger.dart';
import 'package:world_countries/helpers.dart';

import 'core_dependencies.dart';

/// A class that manages the initialization of core dependencies asynchronously.
///
/// This class uses a [Completer] to handle the initialization process and
/// manage errors.
class DependenciesCompleter<T extends CoreDependencies>
    with LoggerMixin
    implements Completer<T?> {
  /// Creates an instance of [DependenciesCompleter].
  ///
  /// An optional initializer function can be provided.
  DependenciesCompleter({Future<T?> Function()? initializer})
    : _onInit = initializer;

  final Future<T?> Function()? _onInit;
  final _completer = Completer<T?>();
  bool _isInitializationStarted = false;

  /// Initializes the core dependencies.
  void initialize() {
    if (_isInitializationStarted || _onInit == null) return;
    _isInitializationStarted = true;
    Future(() async {
      try {
        await Duration.zero.sleep; // TODO! Refactor everywhere.
        final coreDependencies = await _onInit();
        if (isCompleted) return;
        complete(coreDependencies);
      } catch (error, stackTrace) {
        log.severe('Failed to initialize dependencies!', error, stackTrace);
        if (!isCompleted) completeError(error);
      }
    });
  }

  @override
  Future<T?> get future => _completer.future;

  @override
  bool get isCompleted => _completer.isCompleted;

  @override
  void complete([FutureOr<T?>? value]) => _completer.complete(value);

  @override
  void completeError(Object error, [StackTrace? stackTrace]) =>
      _completer.completeError(error, stackTrace);
}
