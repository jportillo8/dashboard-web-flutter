import 'package:admin_dashboard/providers/register_form_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/buttons/custom_btn.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:admin_dashboard/ui/inputs/custom_inputs.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RegisterFormProvider(),
        child: Builder(builder: (context) {
          final registerFormProvider =
              Provider.of<RegisterFormProvider>(context, listen: false);

          return SingleChildScrollView(
            child: Container(
              // color: Colors.red,
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 370),
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: registerFormProvider.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                            onChanged: (value) =>
                                registerFormProvider.name = value,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Ingrese su nombre';
                              if (value.length > 20)
                                return 'Su nombre no debe sobrepasar 20 caracteres';
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: CustomInputs.loginInputDecoration(
                              hint: 'Ingrese su nombre',
                              label: 'Nombre',
                              icon: Icons.supervised_user_circle_outlined,
                            )),
                        SizedBox(height: 20),
                        // Correo
                        TextFormField(
                            onChanged: (value) =>
                                registerFormProvider.email = value,
                            validator: (value) {
                              if (!EmailValidator.validate(value ?? ''))
                                return 'Email no valido';
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: CustomInputs.loginInputDecoration(
                              hint: 'Ingrese su correo',
                              label: 'Email',
                              icon: Icons.email_outlined,
                            )),
                        SizedBox(height: 20),
                        // Password
                        TextFormField(
                            onChanged: (value) =>
                                registerFormProvider.password = value,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Ingrese su contraseña';
                              if (value.length < 6)
                                return 'La contraseña debe ser de 6 caracteres';
                              return null;
                            },
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: CustomInputs.loginInputDecoration(
                                hint: '********',
                                label: 'Password',
                                icon: Icons.lock_clock_outlined)),
                        SizedBox(height: 20),
                        CustomBtn(
                          onPressed: () {
                            registerFormProvider.validateForm();
                          },
                          text: 'Crear cuenta',
                          // color: Colors.red,
                          // isFilled: true,
                        ),
                        SizedBox(height: 20),
                        LinkText(
                          text: 'Ir al login',
                          onPressed: () {
                            Navigator.pushNamed(
                                context, Flurorouter.loginRoute);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
