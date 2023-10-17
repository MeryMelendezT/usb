import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/notes/notes_viewmodel.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotesViewModel>.nonReactive(
      viewModelBuilder: NotesViewModel.new,
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
          backgroundColor: Colors.white,
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
                        child: Text('Verificar Notas', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600))
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Materia', style: TextStyle(color: ParametersColors.textFieldColor, fontSize: 18, fontWeight: FontWeight.w600))
                      ),
                      const SizedBox(height: 80),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Verificar contenidos enviados', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400))),
                      const SizedBox(height: 40),
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(6),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Container(
                            height: 120,
                            width: 120,
                            color: Colors.white,
                            child: Center(
                              child: Icon(Icons.add, color: ParametersColors.primaryColor, size: 40),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 32),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text('1er parcial', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
                                SizedBox(height: 10),
                                Container(
                                  width: 100,
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Nota',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text('2do parcial', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
                                SizedBox(height: 10),
                                Container(
                                  width: 100,
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Nota',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text('3er parcial', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
                                SizedBox(height: 10),
                                Container(
                                  width: 100,
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Nota',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text('Example final', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
                                SizedBox(height: 10),
                                Container(
                                  width: 100,
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Nota',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Observaciones', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400))
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Observaciones',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 32),
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Enviar', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ParametersColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}