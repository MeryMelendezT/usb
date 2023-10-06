import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/app_router.gr.dart' as app_router;
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/home/home_viewmodel.dart';
import 'package:usb/widgets/custom_text.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      viewModelBuilder: HomeViewModel.new,
      onViewModelReady: (model) => model.initialize(context),
      builder: (context, model, child) => SafeArea(
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
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 32,left: 32, top: 40, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'Bienvenido', color: ParametersColors.textDarkColor, fontSize: 24, fontWeight: FontWeight.w600),
                    CustomText(text: 'Que deseas hacer?', color: ParametersColors.textSubTitleColor, fontSize: 16, fontWeight: FontWeight.w500),
                  ],
                ),
              ),
              SizedBox(
                height: 175,
                child: ListView.builder(
                  primary: true,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: model.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 175.0, // Ancho de cada elemento en la lista
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          model.items[index],
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 elementos por fila
                    crossAxisSpacing: 5, // Espacio horizontal entre elementos
                    mainAxisSpacing: 10, // Espacio vertical entre elementos
                    mainAxisExtent: 150,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // En este ejemplo, creamos celdas simples con un número.
                    return Card(
                      color: ParametersColors.accentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Radio de las esquinas redondeadas
                      ),
                      child: Center(
                        child: CustomText(
                          color: ParametersColors.textDarkColor,
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                          text: model.cards[index]['name'],
                        )
                      ),
                    );
                  },
                  itemCount: model.cards.length,
                )
              )
            ],
          ),
        )
      ),
    );
  }
}