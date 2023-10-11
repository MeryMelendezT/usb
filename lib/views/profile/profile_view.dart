import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/app_router.gr.dart' as app_router;
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/profile/profile_viewmodel.dart';
import 'package:usb/widgets/custom_text.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.nonReactive(
      viewModelBuilder: ProfileViewModel.new, 
      onViewModelReady: (model) => model.initialize(context),
      builder: (context, viewModel, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ParametersColors.primaryColor,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                AutoRouter.of(context).push(app_router.MapUSaleViewRoute());
              },
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset('assets/images/logo_usb.png', width: 30, height: 30),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 32,left: 32, top: 40, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Detalle de usuario (ROL)', color: ParametersColors.textDarkColor, fontSize: 24, fontWeight: FontWeight.w600),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}