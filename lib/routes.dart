import 'package:flutter/material.dart';
import 'package:scedula/Screen/Login/Loginscreen.dart';
import 'package:scedula/Screen/Register/Registrasi.dart';
import 'package:scedula/Screen/GetStart/WelcomeScreen.dart';

final Map<String, WidgetBuilder> routes = {
  Loginscreen.routeName: (context) => const Loginscreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
   WelcomeScreen.routeName: (context) => const WelcomeScreen(),
};
