import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      viewModelBuilder: HomeViewModel.new,
      onViewModelReady: (model) => model.initialize(context),
      builder: (context, viewModel, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ParametersColors.primaryColor,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
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
              children: [
                Text('Bienvenido'),
                Text('Bienvenido'),
              ],
            ),
          ),
        )
      ),
    );
  }
}