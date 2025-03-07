import 'dart:async';

import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

class InitializationGuard extends AutoRouteGuard {
  const InitializationGuard([this._guardCompleter]);

  final Completer<Object?>? _guardCompleter;
  static const _until = Overview();

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    resolver.next();

    try {
      if (_guardCompleter?.isCompleted ?? false) return;
      await _guardCompleter?.future;
      await resolver.redirectUntil(_until);
      await router.replaceAll(const [_until]);
    } catch (error) {
      await router.push(Failure(message: error.toString()));
    }
  }
}
