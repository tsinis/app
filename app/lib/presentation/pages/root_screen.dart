import 'package:auto_route/auto_route.dart';
import 'package:database/database.dart' hide Column;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/core_dependencies.dart';
import '../../router/app_router.gr.dart';
import '../theme/app_theme.dart';
import 'account_screen.dart';
import 'favorites_screen.dart';
import 'hotels_screen.dart';
import 'overview_screen.dart';

/// The root screen of the app that contains the bottom navigation bar and
/// manages the tabs.
///
/// This screen uses [AutoTabsScaffold] to manage the tabs and [BlocProvider]
/// to manage the state of the favorites.
@RoutePage(name: 'root')
class RootScreen extends StatelessWidget {
  /// Creates an instance of [RootScreen].
  const RootScreen({super.key});

  /// The name of the root route.
  static const name = 'book';

  /// The list of tabs in the bottom navigation bar.
  static const _tabs = [Overview(), Hotels(), Favorites(), Account()];

  /// The size of the icons in the bottom navigation bar.
  static const _iconSize = AppTheme.size * 2;

  /// The event to refresh the favorites.
  static const _favsEvent = FavoritesRefreshed(delay: kTabScrollDuration);

  @override
  Widget build(BuildContext context) => BlocProvider(
    create:
        (bc) =>
            FavoritesBloc(bc.read<CoreDependencies>().database)
              ..add(_favsEvent),
    child: AutoTabsScaffold(
      appBarBuilder: (_, router) => AppBar(title: Text(router.current.name)),
      bottomNavigationBuilder:
          (_, router) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(height: 1),
              NavigationBar(
                destinations: const [
                  NavigationDestination(
                    icon: Icon(OverviewScreen.icon, size: _iconSize),
                    label: 'Overview',
                  ),
                  NavigationDestination(
                    icon: Icon(HotelsScreen.icon, size: _iconSize),
                    label: 'Hotels',
                  ),
                  NavigationDestination(
                    icon: Icon(FavoritesScreen.icon, size: _iconSize),
                    label: 'Favorites',
                  ),
                  NavigationDestination(
                    icon: Icon(AccountScreen.icon, size: _iconSize),
                    label: 'Account',
                  ),
                ],
                onDestinationSelected: router.setActiveIndex,
                selectedIndex: router.activeIndex,
              ),
            ],
          ),
      lazyLoad: false,
      routes: _tabs,
    ),
  );
}
