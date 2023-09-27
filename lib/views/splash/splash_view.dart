import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/app_router.gr.dart' as app_router;
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/splash/splash_viewmodel.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  static int time = 3;
  
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: time), () async{
      await AutoRouter.of(context).pushAndPopUntil(const app_router.CampusViewRoute(), predicate: (route) => false);

    });  
  }
  
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.nonReactive(
      viewModelBuilder: SplashViewModel.new,
      onViewModelReady: (model) => model.initialize(context),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: ParametersColors.primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo_usb.png'),
            ],
          ),
        ),
      ),
    );
  }
}