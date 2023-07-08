import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jroscope/view/splash/splash.view.dart';
import 'package:jroscope/view/user/auth/login.auth.view.dart';
import 'package:jroscope/view/user/auth/register.auth.view.dart';

/// The route configuration.
final GoRouter routeConfig = GoRouter(
  routes: <RouteBase>[
    /// set initial to splash screen
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return SplashView();
      },
    ),

    /// set initial auth view to login screen
    GoRoute(
        path: '/auth',
        builder: (BuildContext context, GoRouterState state) => LoginAuthView(),
        routes: <RouteBase>[
          /// routes for register
          GoRoute(
            path: '/register',
            builder: (BuildContext context, GoRouterState state) =>
                RegisterAuthView(),
          )
        ]),
  ],
);
