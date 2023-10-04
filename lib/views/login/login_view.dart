import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/parameters.dart';
import 'package:usb/views/login/login_viewmodel.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      viewModelBuilder: LoginViewModel.new,
      onViewModelReady: (model) => model.initialize(context),
      builder: (context, viewModel, child) => SafeArea(
        child: Scaffold(
          body: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Image.asset('assets/images/logo_usb.png', width: 141, height: 213,)
                        ),
                        CustomText(text: 'Le damos la bienvenida a la', isTitle: false),
                        const SizedBox(height: 10),
                        CustomText(text: Parameters.nameProject, isTitle: true),
                        const SizedBox(height: 45),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: 'Iniciar sesión de usuario', isTitle: false),
                              CustomText(text:'Por favor ingrese sus credenciales de usuario', isTitle: false),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Nombre de usuario', isTitle: false,),
                            TextFormField(
                              validator: (value) {
                                // add email validation
                                if (value == null || value.isEmpty) {
                                  return 'Ingrese algún texto';
                                }
                                bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
                                if (!emailValid) {
                                  return 'Por favor ingresa un correo electronico valido';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                hintText: 'Ingrese su usuario',
                                border: OutlineInputBorder(),
                              ),
                            )
                          ]
                        ),
                        const SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Contraseña', isTitle: false),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Ingrese algún texto';
                                }
                                if (value.length < 6) {
                                  return 'La contraseña debe tener almenos 6 caracteres';
                                }
                                return null;
                              },
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                hintText: 'Ingrese su contraseña',
                                border: const OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  icon: Icon(_isPasswordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    // setState(() {
                                    //   _isPasswordVisible =
                                    //       !_isPasswordVisible;
                                    // });
                                  },
                                )
                              ),
                            ),
                          ]
                        ),
                        const SizedBox(height: 15),
                        CheckboxListTile(
                          value: _rememberMe,
                          onChanged: (value) {
                            if (value == null) return;
                            // setState(() {
                            //   _rememberMe = value;
                            // });
                          },
                          title: const Text('Recordarme'),
                          controlAffinity: ListTileControlAffinity.leading,
                          dense: true,
                          contentPadding: const EdgeInsets.all(0),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 248, 183, 87),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Iniciar sesión',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 84, 87, 93),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Titles'),
                              ),
                            ),
                            onPressed: () {
                            },
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // setState(() {});
                            print("I was tapped!");
                          },
                          child: const Text('¿Olvidaste tu contraseña?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 89, 113, 133),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Titles',
                              decoration: TextDecoration.underline
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints(maxHeight: 50),
                    alignment: Alignment.bottomCenter,
                    color: Color.fromARGB(255, 23, 50, 79),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(Parameters.nameProject,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Titles'
                          )
                        ),
                        Text(Parameters.version,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Titles'
                          )
                        )
                      ],
                    ),
                  )
                )
              ],
            )
          ),
        )
      ),
    );
    //               child: SingleChildScrollView(
    //                 child: Column(
    //                   mainAxisSize: MainAxisSize.min,
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.symmetric(vertical: 16),
    //                       child: Image.asset('assets/images/logo_usb.png', width: 141, height: 213,)
    //                     ),
    //                     const Text_subtittle(subtittle: 'Le damos la bienvenida al'),
    //                     const Text_title(title: Parameters.nameProject),
    //                     _gap(),
    //                     _gap(),
    //                     _gap(),
    //                     Container(
    //                       alignment: Alignment.topLeft,
    //                       child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: const [
    //                           Text_subtittle(
    //                               subtittle: 'Iniciar sesión de usuario'),
    //                           Text_subtittle(
    //                               subtittle:
    //                                   'Por favor ingrese sus credenciales de usuario'),
    //                         ],
    //                       ),
    //                     ),
    //                     _gap(),
    //                     Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           const Text_subtittle(
    //                               subtittle: 'Nombre de usuario'),
    //                           TextFormField(
    //                             validator: (value) {
    //                               // add email validation
    //                               if (value == null || value.isEmpty) {
    //                                 return 'Ingrese algún texto';
    //                               }

    //                               bool emailValid = RegExp(
    //                                       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //                                   .hasMatch(value);
    //                               if (!emailValid) {
    //                                 return 'Por favor ingresa un correo electronico valido';
    //                               }

    //                               return null;
    //                             },
    //                             decoration: const InputDecoration(
    //                               //labelText: 'Usuario',
    //                               hintText: 'Ingrese su usuario',
    //                               //prefixIcon: Icon(Icons.email_outlined),
    //                               border: OutlineInputBorder(),
    //                             ),
    //                           )
    //                         ]),
    //                     _gap(),
    //                     Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           const Text_subtittle(subtittle: 'Contraseña'),
    //                           TextFormField(
    //                             validator: (value) {
    //                               if (value == null || value.isEmpty) {
    //                                 return 'Ingrese algún texto';
    //                               }

    //                               if (value.length < 6) {
    //                                 return 'La contraseña debe tener almenos 6 caracteres';
    //                               }
    //                               return null;
    //                             },
    //                             obscureText: !_isPasswordVisible,
    //                             decoration: InputDecoration(
    //                                 //labelText: 'Contraseña',
    //                                 hintText: 'Ingrese su contraseña',
    //                                 // prefixIcon:
    //                                 //     const Icon(Icons.lock_outline_rounded),
    //                                 border: const OutlineInputBorder(),
    //                                 suffixIcon: IconButton(
    //                                   icon: Icon(_isPasswordVisible
    //                                       ? Icons.visibility_off
    //                                       : Icons.visibility),
    //                                   onPressed: () {
    //                                     // setState(() {
    //                                     //   _isPasswordVisible =
    //                                     //       !_isPasswordVisible;
    //                                     // });
    //                                   },
    //                                 )),
    //                           ),
    //                         ]),
    //                     _gap(),
    //                     CheckboxListTile(
    //                       value: _rememberMe,
    //                       onChanged: (value) {
    //                         if (value == null) return;
    //                         // setState(() {
    //                         //   _rememberMe = value;
    //                         // });
    //                       },
    //                       title: const Text('Recordarme'),
    //                       controlAffinity: ListTileControlAffinity.leading,
    //                       dense: true,
    //                       contentPadding: const EdgeInsets.all(0),
    //                     ),
    //                     _gap(),
    //                     SizedBox(
    //                       width: double.infinity,
    //                       child: ElevatedButton(
    //                         style: ElevatedButton.styleFrom(
    //                           backgroundColor:
    //                               Color.fromARGB(255, 248, 183, 87),
    //                           shape: RoundedRectangleBorder(
    //                               borderRadius: BorderRadius.circular(20)),
    //                         ),
    //                         child: const Padding(
    //                           padding: EdgeInsets.all(10.0),
    //                           child: Text(
    //                             'Iniciar sesión',
    //                             style: TextStyle(
    //                                 color: Color.fromARGB(255, 84, 87, 93),
    //                                 fontSize: 15,
    //                                 fontWeight: FontWeight.bold,
    //                                 fontFamily: 'Titles'),
    //                           ),
    //                         ),
    //                         onPressed: () {
    //                           // if (_formKey.currentState?.validate() ?? false) {
    //                           // Navigator.pushReplacement(
    //                           //     context,
    //                           //     MaterialPageRoute(
    //                           //       // builder: (context) => Login_screen(),
    //                           //       builder: (context) => Qr_page(),
    //                           //     ));
    //                           // }
    //                         },
    //                       ),
    //                     ),
    //                     _gap(),
    //                     _gap(),
    //                     _gap(),
    //                     TextButton(
    //                       onPressed: () {
    //                         // setState(() {});
    //                         print("I was tapped!");
    //                       },
    //                       child: const Text('¿Olvidaste tu contraseña?',
    //                           textAlign: TextAlign.center,
    //                           style: TextStyle(
    //                               fontSize: 10,
    //                               color: Color.fromARGB(255, 89, 113, 133),
    //                               fontWeight: FontWeight.bold,
    //                               fontFamily: 'Titles',
    //                               decoration: TextDecoration.underline)),
    //                     ),
    //                     // _gap(),
    //                     // _gap(),
    //                     // _gap(),
    //                     // _gap(),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             //),
    //           ),
    //           Expanded(
    //               child: Container(
    //             constraints: const BoxConstraints(maxHeight: 50),
    //             alignment: Alignment.bottomCenter,
    //             color: Color.fromARGB(255, 23, 50, 79),
    //             child: Column(
    //               //crossAxisAlignment: CrossAxisAlignment.start,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Text(Parameters.nameProject,
    //                     textAlign: TextAlign.center,
    //                     style: const TextStyle(
    //                         fontSize: 10,
    //                         color: Color.fromARGB(255, 255, 255, 255),
    //                         fontFamily: 'Titles')),
    //                 Text(Parameters.version,
    //                     textAlign: TextAlign.center,
    //                     style: const TextStyle(
    //                         fontSize: 10,
    //                         color: Color.fromARGB(255, 255, 255, 255),
    //                         fontWeight: FontWeight.bold,
    //                         fontFamily: 'Titles'))
    //               ],
    //             ),
    //           ))
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

// class TextCustom extends ViewModelBuilder<>

class CustomText extends ViewModelWidget<LoginViewModel>{
  CustomText({Key? key, required this.isTitle, required this.text}):super(key: key);
  bool isTitle;
  String text;

  @override
  Widget build(BuildContext context, LoginViewModel model) {
    return Text(text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: isTitle ? 20 : 10,
        color: isTitle ? Color.fromARGB(255, 18, 65, 104): Color.fromARGB(255, 89, 113, 133),
        fontWeight: FontWeight.bold,
        fontFamily: 'Titles'
      ),
    );
  }
}