import 'package:flutter/material.dart';
import 'package:scedula/routes.dart';
import 'package:scedula/theme.dart';
import 'package:scedula/Screen/GetStart/WelcomeScreen.dart';

void main() async {
  runApp(MaterialApp(
    title: "Scedula",
    theme: theme(),
    initialRoute: WelcomeScreen.routeName,
    routes: routes,
  ));
}
