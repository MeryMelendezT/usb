import 'package:auto_route/auto_route.dart';
import 'package:usb/views/campus/campus_view.dart';
import 'package:usb/views/campus_in_app/campus_in_app_view.dart';
import 'package:usb/views/faq/faq_view.dart';
import 'package:usb/views/home/home_view.dart';
import 'package:usb/views/login/login_view.dart';
import 'package:usb/views/map_usale/map_usale_view.dart';
import 'package:usb/views/notes/notes_view.dart';
import 'package:usb/views/profile/profile_view.dart';
import 'package:usb/views/splash/splash_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: CampusView, name: 'campusViewRoute'),
    AutoRoute(page: CampusInAppView, name: 'campusInAppViewRoute'),
    AutoRoute(page: FaqView, name: 'faqViewRoute'),
    AutoRoute(page: HomeView, name: 'homeViewRoute'),
    AutoRoute(page: LoginView, initial: true, name: 'loginViewRoute'),
    AutoRoute(page: MapUSaleView, name: 'mapUSaleViewRoute'),
    AutoRoute(page: NotesView, name: 'notesViewRoute'),
    AutoRoute(page: ProfileView, name: 'profileViewRoute'),
    AutoRoute(page: SplashView, name: 'splashViewRoute'),
  ]
)

class $AppRouter {}