import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/blocs/theme/bloc.dart';
import 'package:i_assistant/presentation/pages/navigator_handler/bloc/bloc.dart';
import 'package:i_assistant/utils/extensions/go_router_extension.dart';

import '../../../utils/router/routes.dart';
import '../../resources/app_colors.dart';

final navigationHandlerScaffoldKey = GlobalKey<ScaffoldState>();

class ScaffoldWithBottomNavBar extends StatefulWidget {
  const ScaffoldWithBottomNavBar(
      {Key? key, required this.navigationShell, required this.state})
      : super(key: key);
  final StatefulNavigationShell navigationShell;
  final GoRouterState state;

  @override
  State<ScaffoldWithBottomNavBar> createState() =>
      ScaffoldWithBottomNavBarState();
}

class ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  final List<int> navigationStack = [0];

  void _chandeIndex(int tabIndex) {
    final AppRoutes route;
    switch (tabIndex) {
      case 0:
        route = AppRoutes.calendar;
      case 1:
        route = AppRoutes.notes;
      case 2:
        route = AppRoutes.calendar;
      default:
        route = AppRoutes.calendar;
    }
    if (widget.navigationShell.currentIndex == tabIndex) {
      GoRouter.of(context).popUntil(route.toPath);
    } else {
      navigationStack.add(tabIndex);
      widget.navigationShell.goBranch(tabIndex);
    }
    setState(() {});
  }

  BottomNavigationBarItem _item(int index, String svgName) {
    return BottomNavigationBarItem(
      label: '',
      icon: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.navigationShell.currentIndex == index
                    ? AppColors.lightBlue
                    : Colors.transparent),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/svg/$svgName.svg',
                height: 20,
                width: 20,
                color: widget.navigationShell.currentIndex == index
                    ? AppColors.blue
                    : AppColors.black,
                fit: BoxFit.contain,
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return NavigatorBloc();
      },
      child: WillPopScope(
        onWillPop: () async {
          if (navigationStack.length > 1) {
            navigationStack.removeLast();
            widget.navigationShell.goBranch(navigationStack.last);
            return false;
          }
          return false; //todo обработка выхода из приложения
        },
        child: BlocBuilder<NavigatorBloc, NavigatorViewState>(
            builder: (context, state) {
              return  BlocBuilder<ThemeBloc,ThemeState>(
                  builder: (context, themeState) {
                    return Scaffold(
                      key: navigationHandlerScaffoldKey,
                      backgroundColor: AppColors.white,
                      body: Stack(
                        children: [
                          Column(
                            children: [
                              Expanded(child: widget.navigationShell),
                              SizedBox(
                                height: state.maybeWhen(orElse: () {
                                  return Platform.isIOS ?  45 : 35;
                                }, hide: () {
                                  return 0;
                                }),
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: state.maybeWhen(orElse: () {
                                return null;
                              }, hide: () {
                                return 0;
                              }),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40)),
                                  child: Theme(
                                    data: ThemeData(
                                      splashColor: Colors.transparent,
                                      highlightColor: AppColors.lightBlue,
                                    ),
                                    child: BottomNavigationBar(
                                      selectedFontSize: 0,
                                      unselectedFontSize: 0,

                                      type: BottomNavigationBarType.fixed,
                                      showSelectedLabels: false,
                                      showUnselectedLabels: false,

                                      unselectedItemColor: Colors.black,
                                      landscapeLayout:
                                      BottomNavigationBarLandscapeLayout.centered,

                                      selectedItemColor: AppColors.blue,
                                      backgroundColor: AppColors.white,
                                      currentIndex: widget.navigationShell.currentIndex,
                                      items: [
                                        _item(0, 'calendar'),
                                        _item(1, 'notes'),
                                        _item(2, 'menu'),
                                        _item(3, 'settings'),
                                      ],
                                      onTap: (index) => _chandeIndex(index),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              );
            }),
      ),
    );
  }
}