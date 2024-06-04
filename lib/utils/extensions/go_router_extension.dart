import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/router.dart';
import '../router/routes.dart';


extension GoRouterExtension on GoRouter {
  void popUntil(String path) {
    while (location != path) {
      if (!canPop()) {
        return;
      }
      debugPrint('Popping $location');
      pop();
    }
  }

  void goBackInStack() {
    if (scaffoldWithBottomNavBarKey.currentState!.navigationStack.length > 1) {
      scaffoldWithBottomNavBarKey.currentState?.navigationStack.removeLast();
      scaffoldWithBottomNavBarKey.currentState?.widget.navigationShell
          .goBranch(
          scaffoldWithBottomNavBarKey.currentState!.navigationStack!.last!);

    }
  }



  void goAndAddToStack(AppRoutes path) {
    int pageIndex = () {
      switch (path) {
        case AppRoutes.calendar:
          return 0;
        case AppRoutes.calendar:
          return 1;
        case AppRoutes.calendar:
          return 2;
        case AppRoutes.calendar:
          return 3;
        default:
          return 4;
      }
    }();
    if (pageIndex < 4 &&
        scaffoldWithBottomNavBarKey.currentState?.navigationStack.last !=
            pageIndex) {
      scaffoldWithBottomNavBarKey.currentState?.navigationStack.add(pageIndex);
      //scaffoldWithBottomNavBarKey.currentState?.widget.navigationShell.goBranch(pageIndex);
      //return;
    }
    go(path.toPath);
  }

}