import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jroscope/service/local/local.storage.service.dart';
import 'package:jroscope/view/user/auth/login.auth.view.dart';
import 'package:jroscope/view/user/auth/register.auth.view.dart';
import 'package:jroscope/view/user/profile/interest/edit.interest.view.dart';
import 'package:jroscope/view/user/profile/profile.user.view.dart';

/// The route configuration.
final GoRouter routeConfig = GoRouter(
  routes: <RouteBase>[
    /// set initial to splash screen
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ProfileUserView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'interest/edit',
          builder: (BuildContext context, GoRouterState state) =>
              EditInterestView(),
        ),
      ],
      redirect: (context, state) async {
        final isLoggedIn = await LocalStorageService.instance.getIsLoggedIn();
        if (isLoggedIn == 'true') {
          return null;
        } else {
          return '/auth';
        }
      },
    ),

    /// set initial auth view to login screen
    GoRoute(
      path: '/auth',
      builder: (BuildContext context, GoRouterState state) => LoginAuthView(),
      routes: <RouteBase>[
        /// routes for register
        GoRoute(
          path: 'register',
          builder: (BuildContext context, GoRouterState state) =>
              RegisterAuthView(),
        )
      ],
    ),
  ],
);
