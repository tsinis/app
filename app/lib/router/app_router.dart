import 'package:auto_route/auto_route.dart';

import '../presentation/pages/account_screen.dart';
import '../presentation/pages/favorites_screen.dart';
import '../presentation/pages/hotels_screen.dart';
import '../presentation/pages/overview_screen.dart';
import '../presentation/pages/root_screen.dart';
import '../presentation/pages/splash_screen.dart';
import 'app_router.gr.dart';
import 'initialization_guard.dart';

/// The main router configuration for the app.
///
/// This class defines the routes and guards for the app using the AutoRoute
/// package.
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  /// Creates an instance of [AppRouter] with the given [InitializationGuard].
  AppRouter(this._guard);

  final InitializationGuard _guard;

  static const _basePath = '/';

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: Failure.page),
    AutoRoute(
      guards: [_guard],
      initial: true,
      keepHistory: false,
      page: Splash.page,
      path: _basePath + SplashScreen.name,
    ),
    CustomRoute<Root>(
      keepHistory: false,
      page: Root.page,
      path: _basePath + RootScreen.name,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [
        AutoRoute(page: Overview.page, path: OverviewScreen.name),
        AutoRoute(page: Hotels.page, path: HotelsScreen.name),
        AutoRoute(page: Favorites.page, path: FavoritesScreen.name),
        AutoRoute(page: Account.page, path: AccountScreen.name),
      ],
    ),
  ];
}
