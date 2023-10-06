import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:usb/app/app_router.gr.dart';
import 'package:usb/app/parameters.dart';
import 'package:usb/util/localization_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final delegate = await LocalizationHelper.delegate;
  runApp(LocalizedApp(delegate, MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}): super(key: key);
  
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final localizationDelegate = LocalizedApp.of(context).delegate;
    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: OverlaySupport(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: ParametersApp.acronymProject,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            localizationDelegate
          ],
          locale: localizationDelegate.currentLocale,
          supportedLocales: localizationDelegate.supportedLocales,
          routeInformationParser: _appRouter.defaultRouteParser(), 
          routerDelegate: _appRouter.delegate(),
        ),
      ),
    );
  }
}