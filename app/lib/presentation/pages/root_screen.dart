import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/app_router.gr.dart';
import '../theme/app_theme.dart';
import 'account_screen.dart';
import 'favorites_screen.dart';
import 'hotels_screen.dart';
import 'overview_screen.dart';

@RoutePage(name: 'root')
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  static const name = 'book';
  static const _tabs = [Overview(), Hotels(), Favorites(), Account()];
  static const _iconSize = AppTheme.size * 2;

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
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
  );
}
