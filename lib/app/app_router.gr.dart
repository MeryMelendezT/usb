// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../views/campus/campus_view.dart' as _i2;
import '../views/campus_in_app/campus_in_app_view.dart' as _i3;
import '../views/login/login_view.dart' as _i4;
import '../views/splash/splash_view.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashViewRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
      );
    },
    CampusViewRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.CampusView(),
      );
    },
    CampusInAppViewRoute.name: (routeData) {
      final args = routeData.argsAs<CampusInAppViewRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.CampusInAppView(
          key: args.key,
          link: args.link,
        ),
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.LoginView(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashViewRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          CampusViewRoute.name,
          path: '/campus-view',
        ),
        _i5.RouteConfig(
          CampusInAppViewRoute.name,
          path: '/campus-in-app-view',
        ),
        _i5.RouteConfig(
          LoginViewRoute.name,
          path: '/login-view',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashViewRoute extends _i5.PageRouteInfo<void> {
  const SplashViewRoute()
      : super(
          SplashViewRoute.name,
          path: '/',
        );

  static const String name = 'SplashViewRoute';
}

/// generated route for
/// [_i2.CampusView]
class CampusViewRoute extends _i5.PageRouteInfo<void> {
  const CampusViewRoute()
      : super(
          CampusViewRoute.name,
          path: '/campus-view',
        );

  static const String name = 'CampusViewRoute';
}

/// generated route for
/// [_i3.CampusInAppView]
class CampusInAppViewRoute extends _i5.PageRouteInfo<CampusInAppViewRouteArgs> {
  CampusInAppViewRoute({
    _i6.Key? key,
    required String link,
  }) : super(
          CampusInAppViewRoute.name,
          path: '/campus-in-app-view',
          args: CampusInAppViewRouteArgs(
            key: key,
            link: link,
          ),
        );

  static const String name = 'CampusInAppViewRoute';
}

class CampusInAppViewRouteArgs {
  const CampusInAppViewRouteArgs({
    this.key,
    required this.link,
  });

  final _i6.Key? key;

  final String link;

  @override
  String toString() {
    return 'CampusInAppViewRouteArgs{key: $key, link: $link}';
  }
}

/// generated route for
/// [_i4.LoginView]
class LoginViewRoute extends _i5.PageRouteInfo<void> {
  const LoginViewRoute()
      : super(
          LoginViewRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginViewRoute';
}
