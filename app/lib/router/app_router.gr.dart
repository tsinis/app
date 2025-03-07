// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/presentation/pages/account_screen.dart' as _i1;
import 'package:app/presentation/pages/failure_screen.dart' as _i2;
import 'package:app/presentation/pages/favorites_screen.dart' as _i3;
import 'package:app/presentation/pages/hotels_screen.dart' as _i4;
import 'package:app/presentation/pages/overview_screen.dart' as _i5;
import 'package:app/presentation/pages/root_screen.dart' as _i6;
import 'package:app/presentation/pages/splash_screen.dart' as _i7;
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.AccountScreen]
class Account extends _i8.PageRouteInfo<void> {
  const Account({List<_i8.PageRouteInfo>? children})
    : super(Account.name, initialChildren: children);

  static const String name = 'Account';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountScreen();
    },
  );
}

/// generated route for
/// [_i2.FailureScreen]
class Failure extends _i8.PageRouteInfo<FailureArgs> {
  Failure({
    required String message,
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         Failure.name,
         args: FailureArgs(message: message, key: key),
         initialChildren: children,
       );

  static const String name = 'Failure';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FailureArgs>();
      return _i2.FailureScreen(args.message, key: args.key);
    },
  );
}

class FailureArgs {
  const FailureArgs({required this.message, this.key});

  final String message;

  final _i9.Key? key;

  @override
  String toString() {
    return 'FailureArgs{message: $message, key: $key}';
  }
}

/// generated route for
/// [_i3.FavoritesScreen]
class Favorites extends _i8.PageRouteInfo<void> {
  const Favorites({List<_i8.PageRouteInfo>? children})
    : super(Favorites.name, initialChildren: children);

  static const String name = 'Favorites';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.FavoritesScreen();
    },
  );
}

/// generated route for
/// [_i4.HotelsScreen]
class Hotels extends _i8.PageRouteInfo<void> {
  const Hotels({List<_i8.PageRouteInfo>? children})
    : super(Hotels.name, initialChildren: children);

  static const String name = 'Hotels';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.HotelsScreen();
    },
  );
}

/// generated route for
/// [_i5.OverviewScreen]
class Overview extends _i8.PageRouteInfo<void> {
  const Overview({List<_i8.PageRouteInfo>? children})
    : super(Overview.name, initialChildren: children);

  static const String name = 'Overview';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.OverviewScreen();
    },
  );
}

/// generated route for
/// [_i6.RootScreen]
class Root extends _i8.PageRouteInfo<void> {
  const Root({List<_i8.PageRouteInfo>? children})
    : super(Root.name, initialChildren: children);

  static const String name = 'Root';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.RootScreen();
    },
  );
}

/// generated route for
/// [_i7.SplashScreen]
class Splash extends _i8.PageRouteInfo<void> {
  const Splash({List<_i8.PageRouteInfo>? children})
    : super(Splash.name, initialChildren: children);

  static const String name = 'Splash';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.SplashScreen();
    },
  );
}
