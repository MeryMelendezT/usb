import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/campus/campus_viewmodel.dart';
import 'package:usb/widgets/image_overlay_text.dart';

class CampusView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CampusViewModel>.nonReactive(
      viewModelBuilder: CampusViewModel.new,
      onViewModelReady: (model) => model.initialize(context),
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          backgroundColor: ParametersColors.secondaryColor,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Selecciona tu sede',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 elementos por fila
                    crossAxisSpacing: 5, // Espacio horizontal entre elementos
                    mainAxisSpacing: 10, // Espacio vertical entre elementos
                    mainAxisExtent: 150,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // En este ejemplo, creamos celdas simples con un número.
                    return ImageOverlayText(imagePath: model.campus[index]['image'], overlayText: model.campus[index]['name'], link: model.campus[index]['link'],);
                  },
                  itemCount: model.campus.length,
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}