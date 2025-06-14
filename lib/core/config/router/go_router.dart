import 'package:flutter/material.dart';
import 'package:magic_coffee/core/network/di/module.dart';
import 'package:magic_coffee/domain/locals/prefs_service.dart';
import 'package:magic_coffee/presentation/welcome/welcome.dart';
import 'package:go_router/go_router.dart';

import 'router_name.dart';

GoRoute _defaultGorouter({
  required RoutesGen router,
  required Widget Function(BuildContext context, GoRouterState state) builder,
  List<GoRoute> goRoutes = const [],
}) =>
    GoRoute(
      path: router.path,
      name: router.name,
      routes: goRoutes,
      builder: builder,
    );

// ignore: unused_element
GoRoute _transitionRouter({
  required RoutesGen router,
  required Widget page,
  List<GoRoute> goRoutes = const [],
}) =>
    GoRoute(
      path: router.path,
      name: router.name.isNotEmpty ? router.name : null,
      routes: goRoutes,
      redirect: (BuildContext context, GoRouterState state) {
        if (PrefsService.getToken().isEmpty &&
            state.name != RoutesName.register.name) {
          return RoutesName.login.path;
        }
        return null;
      },
      pageBuilder: (BuildContext context, GoRouterState state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity:
                  CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    );

final GoRouter appRouterConfig = GoRouter(
  navigatorKey: getIt.get<GlobalKey<NavigatorState>>(),
  initialLocation: (PrefsService.getToken().isEmpty)
      ? RoutesName.welcome.path
      : RoutesName.home.path,
  routes: <RouteBase>[
    _defaultGorouter(
      router: RoutesName.welcome,
      builder: (context, state) => const Welcome(),
    ),
  ],
);
