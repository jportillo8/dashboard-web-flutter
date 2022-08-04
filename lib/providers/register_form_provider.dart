import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  String email = '';
  String name = '';
  String password = '';

  validateForm() {
    print('$email === $password');
    formKey.currentState!.validate();
  }
}
