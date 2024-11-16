import 'package:flutter/material.dart';
import 'package:scedula/components/Register/registerComponents.dart';
import 'package:scedula/size_config.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Registercomponents(),
    );
  }
}
