import 'package:flutter/material.dart';
import 'package:scedula/routes.dart';
import 'package:scedula/theme.dart';
import 'package:scedula/Screen/GetStart/WelcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    title: "Scedula",
    theme: theme(),
    initialRoute: WelcomeScreen.routeName,
    routes: routes,
  ));
}
