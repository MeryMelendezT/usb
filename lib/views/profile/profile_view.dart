import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/app_router.gr.dart' as app_router;
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/profile/profile_viewmodel.dart';
import 'package:usb/widgets/custom_text.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

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
          backgroundColor: ParametersColors.backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 32,left: 32, top: 40, bottom: 8),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: CustomText(text: 'Detalle de usuario (ROL)', color: ParametersColors.textDarkColor, fontSize: 24, fontWeight: FontWeight.w600)
                      ),
                      const SizedBox(height: 16),
                      Image.asset('assets/images/user_icon.png', width: 200, height: 200),
                      const SizedBox(height: 30),
                      CustomText(color: ParametersColors.textGrayColor, fontSize: 24, fontWeight: FontWeight.w700, text: 'Ramiro Ramirez Perez'),
                      const SizedBox(height: 16),
                      RichText(
                        text: TextSpan(
                          text: 'RU:',
                          style: TextStyle(color: ParametersColors.textGrayColor, fontSize: 16, fontWeight: FontWeight.w700),
                          children: [
                            TextSpan(
                              text: ' 123456789',
                              style: TextStyle(color: ParametersColors.textGrayColor, fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ]
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Telefono celular:',
                          style: TextStyle(color: ParametersColors.textGrayColor, fontSize: 16, fontWeight: FontWeight.w700),
                          children: [
                            TextSpan(
                              text: ' 123456789',
                              style: TextStyle(color: ParametersColors.textGrayColor, fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ]
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Telefono fijo:',
                          style: TextStyle(color: ParametersColors.textGrayColor, fontSize: 16, fontWeight: FontWeight.w700),
                          children: [
                            TextSpan(
                              text: ' 123456789',
                              style: TextStyle(color: ParametersColors.textGrayColor, fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ]
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Direccion:',
                          style: TextStyle(color: ParametersColors.textGrayColor, fontSize: 16, fontWeight: FontWeight.w700),
                          children: [
                            TextSpan(
                              text: ' 123456789',
                              style: TextStyle(color: ParametersColors.textGrayColor, fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ]
                        ),
                      ),
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