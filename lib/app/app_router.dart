import 'package:auto_route/auto_route.dart';
import 'package:usb/views/campus/campus_view.dart';
import 'package:usb/views/campus_in_app/campus_in_app_view.dart';
import 'package:usb/views/splash/splash_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true, name: 'splashViewRoute'),
    AutoRoute(page: CampusView, name: 'campusViewRoute'),
    AutoRoute(page: CampusInAppView, name: 'campusInAppViewRoute'),
  ]
)

class $AppRouter {}