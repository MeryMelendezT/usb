import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:usb/app/app_router.gr.dart' as app_router;

class ImageOverlayText extends StatefulWidget {
  final String imagePath;
  final String link;
  final String overlayText;

  ImageOverlayText({required this.imagePath, required this.link, required this.overlayText});

  @override
  State<ImageOverlayText> createState() => _ImageOverlayTextState();
}

class _ImageOverlayTextState extends State<ImageOverlayText> {
  bool _isColored = false;

  void _colorFilter() {
    setState(() {
      _isColored = !_isColored;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Ancho de la celda
      height: 200, // Alto de la celda
      margin: const EdgeInsets.all(0),
      child: GestureDetector(
        onTap: () async{
          await AutoRouter.of(context).push(app_router.CampusInAppViewRoute(link: widget.link));

          // Navigator.pushNamed(
          //   context,
          //   '/dashboard',
          //   arguments: 'ds',
          // );
        },
        // _colorFilter,
        // child: ColorFiltered(
        //   colorFilter: ColorFilter.mode(
        //     _isColored ? Colors.transparent : Colors.grey,
        //     BlendMode.saturation,
        //   ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(widget.imagePath),
                width: 200, // Ancho de la imagen
                height: 200, // Alto de la imagen
                fit: BoxFit.cover, // Ajustar la imagen para que cubra la celda
              ),
            ),
            Center(
              child: Text(
                widget.overlayText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        // ),
      ),
    );
  }
}