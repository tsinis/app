import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/app_router.gr.dart';
import 'account_screen.dart';
import 'favorites_screen.dart';
import 'hotels_screen.dart';
import 'overview_screen.dart';

@RoutePage(name: 'root')
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  static const name = 'book';

  static const _tabs = [Overview(), Hotels(), Favorites(), Account()];

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
    appBarBuilder: (_, _) => AppBar(title: const Text('Hotel')), // TODO!
    bottomNavigationBuilder:
        (_, tabsRouter) => NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(OverviewScreen.icon),
              label: 'Overview',
            ),
            NavigationDestination(
              icon: Icon(HotelsScreen.icon),
              label: 'Hotels',
            ),
            NavigationDestination(
              icon: Icon(FavoritesScreen.icon),
              label: 'Favorites',
            ),
            NavigationDestination(
              icon: Icon(AccountScreen.icon),
              label: 'Account',
            ),
          ],
          onDestinationSelected: tabsRouter.setActiveIndex,
          selectedIndex: tabsRouter.activeIndex,
        ),
    lazyLoad: false,
    routes: _tabs,
  );
}
