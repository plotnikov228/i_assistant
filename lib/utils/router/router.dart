import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/utils/router/routes.dart';

import '../../presentation/pages/calendar/calendar_page.dart';
import '../../presentation/pages/navigator_handler/navigator_handler_page.dart';
import 'navigation_keys.dart';

final GlobalKey<ScaffoldWithBottomNavBarState> scaffoldWithBottomNavBarKey =
    GlobalKey();

class AppRouter {
  GoRouter get router => _goRouter;

  List<RouteBase> get routes => _routes;

  AppRouter() {
    _goRouter = GoRouter(
      navigatorKey: NavigatorKeys.rootNavigatorKey,
      initialLocation: AppRoutes.calendar.toPath,
      debugLogDiagnostics: true,
      routes: _routes,
    );
  }

  late final GoRouter _goRouter;

  final List<RouteBase> _routes = [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => ScaffoldWithBottomNavBar(
              key: scaffoldWithBottomNavBarKey,
              navigationShell: navigationShell,
              state: state,
            ),
        branches: [
          StatefulShellBranch(navigatorKey: NavigatorKeys.calendar, routes: [
            GoRoute(
                parentNavigatorKey: NavigatorKeys.calendar,
                path: AppRoutes.calendar.toPath,
                name: AppRoutes.calendar.toName,
                builder: (context, state) {
                  return const CalendarPage();
                })
          ]),
        ]),
  ];
}
