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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../views/campus/campus_view.dart' as _i1;
import '../views/campus_in_app/campus_in_app_view.dart' as _i2;
import '../views/faq/faq_view.dart' as _i3;
import '../views/home/home_view.dart' as _i4;
import '../views/login/login_view.dart' as _i5;
import '../views/map_usale/map_usale_view.dart' as _i6;
import '../views/notes/notes_view.dart' as _i7;
import '../views/profile/profile_view.dart' as _i8;
import '../views/splash/splash_view.dart' as _i9;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    CampusViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.CampusView(),
      );
    },
    CampusInAppViewRoute.name: (routeData) {
      final args = routeData.argsAs<CampusInAppViewRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.CampusInAppView(
          key: args.key,
          link: args.link,
        ),
      );
    },
    FaqViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.FaqView(),
      );
    },
    HomeViewRoute.name: (routeData) {
      final args = routeData.argsAs<HomeViewRouteArgs>(
          orElse: () => const HomeViewRouteArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.HomeView(key: args.key),
      );
    },
    LoginViewRoute.name: (routeData) {
      final args = routeData.argsAs<LoginViewRouteArgs>(
          orElse: () => const LoginViewRouteArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.LoginView(key: args.key),
      );
    },
    MapUSaleViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.MapUSaleView(),
      );
    },
    NotesViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.NotesView(),
      );
    },
    ProfileViewRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileViewRouteArgs>(
          orElse: () => const ProfileViewRouteArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ProfileView(key: args.key),
      );
    },
    SplashViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.SplashView(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          CampusViewRoute.name,
          path: '/campus-view',
        ),
        _i10.RouteConfig(
          CampusInAppViewRoute.name,
          path: '/campus-in-app-view',
        ),
        _i10.RouteConfig(
          FaqViewRoute.name,
          path: '/',
        ),
        _i10.RouteConfig(
          HomeViewRoute.name,
          path: '/home-view',
        ),
        _i10.RouteConfig(
          LoginViewRoute.name,
          path: '/login-view',
        ),
        _i10.RouteConfig(
          MapUSaleViewRoute.name,
          path: '/map-usale-view',
        ),
        _i10.RouteConfig(
          NotesViewRoute.name,
          path: '/notes-view',
        ),
        _i10.RouteConfig(
          ProfileViewRoute.name,
          path: '/profile-view',
        ),
        _i10.RouteConfig(
          SplashViewRoute.name,
          path: '/splash-view',
        ),
      ];
}

/// generated route for
/// [_i1.CampusView]
class CampusViewRoute extends _i10.PageRouteInfo<void> {
  const CampusViewRoute()
      : super(
          CampusViewRoute.name,
          path: '/campus-view',
        );

  static const String name = 'CampusViewRoute';
}

/// generated route for
/// [_i2.CampusInAppView]
class CampusInAppViewRoute
    extends _i10.PageRouteInfo<CampusInAppViewRouteArgs> {
  CampusInAppViewRoute({
    _i11.Key? key,
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

  final _i11.Key? key;

  final String link;

  @override
  String toString() {
    return 'CampusInAppViewRouteArgs{key: $key, link: $link}';
  }
}

/// generated route for
/// [_i3.FaqView]
class FaqViewRoute extends _i10.PageRouteInfo<void> {
  const FaqViewRoute()
      : super(
          FaqViewRoute.name,
          path: '/',
        );

  static const String name = 'FaqViewRoute';
}

/// generated route for
/// [_i4.HomeView]
class HomeViewRoute extends _i10.PageRouteInfo<HomeViewRouteArgs> {
  HomeViewRoute({_i11.Key? key})
      : super(
          HomeViewRoute.name,
          path: '/home-view',
          args: HomeViewRouteArgs(key: key),
        );

  static const String name = 'HomeViewRoute';
}

class HomeViewRouteArgs {
  const HomeViewRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'HomeViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.LoginView]
class LoginViewRoute extends _i10.PageRouteInfo<LoginViewRouteArgs> {
  LoginViewRoute({_i11.Key? key})
      : super(
          LoginViewRoute.name,
          path: '/login-view',
          args: LoginViewRouteArgs(key: key),
        );

  static const String name = 'LoginViewRoute';
}

class LoginViewRouteArgs {
  const LoginViewRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'LoginViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.MapUSaleView]
class MapUSaleViewRoute extends _i10.PageRouteInfo<void> {
  const MapUSaleViewRoute()
      : super(
          MapUSaleViewRoute.name,
          path: '/map-usale-view',
        );

  static const String name = 'MapUSaleViewRoute';
}

/// generated route for
/// [_i7.NotesView]
class NotesViewRoute extends _i10.PageRouteInfo<void> {
  const NotesViewRoute()
      : super(
          NotesViewRoute.name,
          path: '/notes-view',
        );

  static const String name = 'NotesViewRoute';
}

/// generated route for
/// [_i8.ProfileView]
class ProfileViewRoute extends _i10.PageRouteInfo<ProfileViewRouteArgs> {
  ProfileViewRoute({_i11.Key? key})
      : super(
          ProfileViewRoute.name,
          path: '/profile-view',
          args: ProfileViewRouteArgs(key: key),
        );

  static const String name = 'ProfileViewRoute';
}

class ProfileViewRouteArgs {
  const ProfileViewRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'ProfileViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.SplashView]
class SplashViewRoute extends _i10.PageRouteInfo<void> {
  const SplashViewRoute()
      : super(
          SplashViewRoute.name,
          path: '/splash-view',
        );

  static const String name = 'SplashViewRoute';
}
