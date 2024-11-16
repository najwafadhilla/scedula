import 'package:flutter/material.dart';
import 'package:scedula/components/Login/LoginComponen.dart'; 
import 'package:scedula/size_config.dart';

class Loginscreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body:
          LoginComponen(), 
    );
  }
}
