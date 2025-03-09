import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:log/logger.dart';

import 'app_router.gr.dart';

/// A guard that ensures the app is initialized before navigating to certain
/// routes.
///
/// This guard uses a [Completer] to manage the initialization process
/// and handle any errors.
class InitializationGuard extends AutoRouteGuard with LoggerMixin {
  /// Creates an instance of [InitializationGuard].
  const InitializationGuard([this._guardCompleter]);

  final Completer<Object?>? _guardCompleter;
  static const _until = Overview();

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    resolver.next();
    log.info('Checking guard...');

    try {
      if (_guardCompleter?.isCompleted ?? false) return;
      await _guardCompleter?.future;
      await resolver.redirectUntil(_until);
      await router.replaceAll(const [_until]);
    } catch (error, stackTrace) {
      log.severe('Failed to initialize app!', error, stackTrace);
      await router.push(Failure(message: error.toString()));
    }
  }
}
