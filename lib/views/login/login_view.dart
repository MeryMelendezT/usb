import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/app_router.gr.dart' as app_router;
import 'package:usb/app/parameters.dart';
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/login/login_viewmodel.dart';
import 'package:usb/widgets/custom_text.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                        CustomText(text: 'Le damos la bienvenida a la', color: ParametersColors.textGrayColor, fontSize: 14, fontWeight: FontWeight.w500),
                        const SizedBox(height: 10),
                        CustomText(text: ParametersApp.nameProject, color: ParametersColors.textDarkColor, fontSize: 24, fontWeight: FontWeight.w600),
                        const SizedBox(height: 45),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: 'Iniciar sesión de usuario', color: ParametersColors.textGrayColor, fontSize: 16, fontWeight: FontWeight.w700),
                              SizedBox(height: 8),
                              CustomText(text:'Por favor ingrese sus credenciales de usuario', color: ParametersColors.textGrayColor, fontSize: 12, fontWeight: FontWeight.w400),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Nombre de usuario', color: ParametersColors.textFieldColor, fontSize: 14, fontWeight: FontWeight.w400,),
                            TextFormField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: ParametersColors.primaryColor, width: 0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 0),
                                ),
                                hintText: 'Ingrese su usuario',
                              ),
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
                            )
                          ]
                        ),
                        const SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Contraseña', color: ParametersColors.textFieldColor, fontSize: 14, fontWeight: FontWeight.w400),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: ParametersColors.primaryColor, width: 0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 0),
                                ),
                                hintText: 'Ingrese su contraseña',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                    color: Colors.grey, // You can set the color you prefer
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Ingrese alguna contraseña';
                                }
                                if (value.length < 6) {
                                  return 'La contraseña debe tener al menos 6 caracteres';
                                }
                                return null;
                              },
                              obscureText: !_isPasswordVisible,
                            ),

                          ]
                        ),
                        const SizedBox(height: 15),
                        CheckboxListTile(
                          value: _rememberMe,
                          onChanged: (value) {
                            if (value == null) return;
                            setState(() {
                              _rememberMe = value;
                            });
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
                                  fontFamily: 'Titles'
                                ),
                              ),
                            ),
                            onPressed: () async {
                              await AutoRouter.of(context).push(app_router.HomeViewRoute());
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
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(ParametersApp.nameProject,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Titles'
                          )
                        ),
                        Text(ParametersApp.version,
                          textAlign: TextAlign.center,
                          style: TextStyle(
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
  }
}