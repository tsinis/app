import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/app_router.gr.dart';

@RoutePage(name: 'root')
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  static const name = 'book';

  static const _tabs = [Overview(), Hotels(), Favorites(), Account()];

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
    bottomNavigationBuilder:
        (_, tabsRouter) => NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Overview',
            ),
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
            NavigationDestination(
              icon: Icon(Icons.favorite_border),
              label: 'Favorites',
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle_outlined),
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
