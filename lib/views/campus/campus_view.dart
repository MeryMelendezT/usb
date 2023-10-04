import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/app_router.gr.dart' as app_router;
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/campus/campus_viewmodel.dart';

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

class ImageOverlayText extends ViewModelWidget<CampusViewModel>{
  final String imagePath;
  final String link;
  final String overlayText;

  ImageOverlayText({Key? key, required this.imagePath, required this.link, required this.overlayText}): super(key: key);

  @override
  Widget build(BuildContext context, CampusViewModel model) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: GestureDetector(
        onTap: () async {
          await AutoRouter.of(context).push(app_router.LoginViewRoute());

        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(imagePath),
                width: 200, // Ancho de la imagen
                height: 200, // Alto de la imagen
                fit: BoxFit.cover, // Ajustar la imagen para que cubra la celda
              ),
            ),
            Center(
              child: Text(
                overlayText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}