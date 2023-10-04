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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../views/campus/campus_view.dart' as _i2;
import '../views/campus_in_app/campus_in_app_view.dart' as _i3;
import '../views/home/home_view.dart' as _i5;
import '../views/login/login_view.dart' as _i4;
import '../views/splash/splash_view.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashViewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
      );
    },
    CampusViewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.CampusView(),
      );
    },
    CampusInAppViewRoute.name: (routeData) {
      final args = routeData.argsAs<CampusInAppViewRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.CampusInAppView(
          key: args.key,
          link: args.link,
        ),
      );
    },
    LoginViewRoute.name: (routeData) {
      final args = routeData.argsAs<LoginViewRouteArgs>(
          orElse: () => const LoginViewRouteArgs());
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.LoginView(key: args.key),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomeView(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          SplashViewRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          CampusViewRoute.name,
          path: '/campus-view',
        ),
        _i6.RouteConfig(
          CampusInAppViewRoute.name,
          path: '/campus-in-app-view',
        ),
        _i6.RouteConfig(
          LoginViewRoute.name,
          path: '/login-view',
        ),
        _i6.RouteConfig(
          HomeViewRoute.name,
          path: '/home-view',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashViewRoute extends _i6.PageRouteInfo<void> {
  const SplashViewRoute()
      : super(
          SplashViewRoute.name,
          path: '/',
        );

  static const String name = 'SplashViewRoute';
}

/// generated route for
/// [_i2.CampusView]
class CampusViewRoute extends _i6.PageRouteInfo<void> {
  const CampusViewRoute()
      : super(
          CampusViewRoute.name,
          path: '/campus-view',
        );

  static const String name = 'CampusViewRoute';
}

/// generated route for
/// [_i3.CampusInAppView]
class CampusInAppViewRoute extends _i6.PageRouteInfo<CampusInAppViewRouteArgs> {
  CampusInAppViewRoute({
    _i7.Key? key,
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

  final _i7.Key? key;

  final String link;

  @override
  String toString() {
    return 'CampusInAppViewRouteArgs{key: $key, link: $link}';
  }
}

/// generated route for
/// [_i4.LoginView]
class LoginViewRoute extends _i6.PageRouteInfo<LoginViewRouteArgs> {
  LoginViewRoute({_i7.Key? key})
      : super(
          LoginViewRoute.name,
          path: '/login-view',
          args: LoginViewRouteArgs(key: key),
        );

  static const String name = 'LoginViewRoute';
}

class LoginViewRouteArgs {
  const LoginViewRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.HomeView]
class HomeViewRoute extends _i6.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeViewRoute';
}
