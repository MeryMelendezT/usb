import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/map_usale/map_usale_viewmodel.dart';
import 'package:usb/widgets/custom_text.dart';

class MapUSaleView extends StatefulWidget {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-16.478321, -68.149541),
    zoom: 14.4746,
  );

  @override
  State<MapUSaleView> createState() => _MapUSaleViewState();
}

class _MapUSaleViewState extends State<MapUSaleView> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MapUSaleViewModel>.nonReactive(
      viewModelBuilder: MapUSaleViewModel.new,
      onViewModelReady: (model) => model.initialize(context),
      builder: (context, model, child) => SafeArea(
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 16),
                child: CustomText(color: ParametersColors.textDarkColor, fontSize: 24, fontWeight: FontWeight.w600, text: 'USale Buses'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .6,
                  width: MediaQuery.of(context).size.width,
                  child: GoogleMap(
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    mapType: MapType.normal,
                    initialCameraPosition: MapUSaleView._kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12),
                child: CustomText(color: ParametersColors.textGrayColor, fontSize: 12, fontWeight: FontWeight.w400, text: 'Arrastre el indicador para establecer en rango de búsqueda en kilómetros'),
              )
            ],
          ),
        )
      ),
    );
  }
}