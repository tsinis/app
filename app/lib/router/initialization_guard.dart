import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:log/logger.dart';

import 'app_router.gr.dart';

class InitializationGuard extends AutoRouteGuard with LoggerMixin {
  const InitializationGuard([this._guardCompleter]);

  final Completer<Object?>? _guardCompleter;
  static const _until = Overview();

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    resolver.next();
    info('Initializing app...');

    try {
      if (_guardCompleter?.isCompleted ?? false) return;
      await _guardCompleter?.future;
      await resolver.redirectUntil(_until);
      await router.replaceAll(const [_until]);
    } catch (error, stackTrace) {
      log(Level.SEVERE, 'Failed to initialize app!', error, stackTrace);
      await router.push(Failure(message: error.toString()));
    }
  }
}
