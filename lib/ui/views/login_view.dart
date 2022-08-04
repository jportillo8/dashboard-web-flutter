import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:admin_dashboard/providers/login_form_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/buttons/custom_btn.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:admin_dashboard/ui/inputs/custom_inputs.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return ChangeNotifierProvider(
        create: ((context) => LoginFormProvider()),
        child: Builder(builder: (context) {
          final loginFormProvider =
              Provider.of<LoginFormProvider>(context, listen: false);

          return SingleChildScrollView(
            child: Container(
              // color: Colors.red,
              margin: EdgeInsets.only(top: 100),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 370),
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: loginFormProvider.formKey,
                    child: Column(
                      children: [
                        // Correo
                        TextFormField(
                            validator: (value) {
                              if (!EmailValidator.validate(value ?? ''))
                                return 'Email no valido';
                              return null;
                            },
                            onChanged: (value) =>
                                loginFormProvider.email = value,
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
                                loginFormProvider.password = value,
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
                            final isValid = loginFormProvider.validateForm();
                            if (isValid) {
                              authProvider.login(loginFormProvider.email,
                                  loginFormProvider.password);
                            }
                          },
                          text: 'Ingresar',
                          // color: Colors.red,
                          // isFilled: true,
                        ),
                        SizedBox(height: 20),
                        LinkText(
                          text: 'Nueva Cuenta',
                          onPressed: () {
                            Navigator.pushNamed(
                                context, Flurorouter.registerRoute);
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
