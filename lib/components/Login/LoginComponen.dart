import 'package:flutter/material.dart';
import 'package:scedula/components/Login/LoginFrom.dart';
import 'package:scedula/size_config.dart';
import 'package:scedula/utils/constants.dart';
import 'package:simple_shadow/simple_shadow.dart'; 

class LoginComponen extends StatefulWidget {
  @override
  _LoginComponentState createState() => _LoginComponentState();

}

class _LoginComponentState extends State<LoginComponen>{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: SizedBox(width: double.infinity,child: Padding(padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: SingleChildScrollView(
        child: Column(
          children :[
            SizedBox(
              height: SizeConfig.screenHeight *0.04,
        ),

        SizedBox(height: SizeConfig.screenHeight * 0.04,
        ),
        SimpleShadow(
          child:Image.asset("assets/icons/icon_login.png", height: 150, width: 202,
          ),
          opacity: 0.5,
          color: kSecondaryColor,
          offset: Offset(5, 5),
          sigma: 2,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login!",
                style: mTitleStyle,
              )
            ],
            )),
            SizedBox(
              height: 20,
            ),
            SignInForm()
        ],
        ),
      ),
      
      ),
      ),
    );
  }
}