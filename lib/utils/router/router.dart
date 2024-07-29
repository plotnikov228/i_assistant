import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/domain/entities/calendar_day/calendar_day.dart';
import 'package:i_assistant/presentation/pages/day/day_page.dart';
import 'package:i_assistant/presentation/pages/notes/notes_page.dart';
import 'package:i_assistant/presentation/pages/notes_and_tasks/notes_and_tasks_page.dart';
import 'package:i_assistant/presentation/pages/services/services_page.dart';
import 'package:i_assistant/presentation/pages/tasks/tasks_page.dart';
import 'package:i_assistant/presentation/pages/theme/theme_page.dart';
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
                routes: [
                  GoRoute(
                      path: AppRoutes.day.toPath,
                      name: AppRoutes.day.toName,
                      builder: (context, state) {
                        final CalendarDay calendarDay = state.extra is Map<String, dynamic> ? CalendarDay.fromJson(state.extra as Map<String, dynamic>) : state.extra as CalendarDay;
                        return DayPage(calendarDay: calendarDay );
                      }),
                ],
                builder: (context, state) {
                  return const CalendarPage();
                }),



          ]),
          StatefulShellBranch(navigatorKey: NavigatorKeys.notes, routes: [
            GoRoute(
                parentNavigatorKey: NavigatorKeys.notes,
                path: AppRoutes.notesAndTasks.toPath,
                name: AppRoutes.notesAndTasks.toName,
                routes: [
                  GoRoute(
                      path: AppRoutes.notes.toPath,
                      name: AppRoutes.notes.toName,
                      builder: (context, state) {
                        return const NotesPage();
                      }),
                  GoRoute(
                      path: AppRoutes.tasks.toPath,
                      name: AppRoutes.tasks.toName,
                      builder: (context, state) {
                        return const TasksPage();
                      })
                ],
                builder: (context, state) {
                  return const NotesAndTasksPage();
                })
          ]),
          StatefulShellBranch(navigatorKey: NavigatorKeys.services, routes: [
            GoRoute(
                parentNavigatorKey: NavigatorKeys.services,
                path: AppRoutes.services.toPath,
                name: AppRoutes.services.toName,
                routes: [
                ],
                builder: (context, state) {
                  return const ServicesPage();
                })
          ]),
          StatefulShellBranch(navigatorKey: NavigatorKeys.settings, routes: [
            GoRoute(
                parentNavigatorKey: NavigatorKeys.settings,
                path: AppRoutes.settings.toPath,
                name: AppRoutes.settings.toName,
                routes: [
                ],
                builder: (context, state) {
                  return const ThemePage();
                })
          ]),
        ]),
  ];
}
