import 'package:flutter/material.dart';
import 'package:scedula/Screen/HomePage/home.dart';
import 'package:scedula/Screen/Register/Registrasi.dart';
import 'package:scedula/components/custom_surfix_icon.dart';
import 'package:scedula/components/default_button_custome_color.dart';
import 'package:scedula/forgotpassword/lupapass1.dart';
import 'package:scedula/size_config.dart';
import 'package:scedula/utils/constants.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInForm> {
//  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remeber = false;

  TextEditingController txtUsername = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        buildUserName(),
        SizedBox(height: getProportionateScreenHeight(30)),
        buildPassword(),
        SizedBox(height: getProportionateScreenHeight(30)),
        Row(
          children: [
            Checkbox(
                value: remeber,
                onChanged: (value) {
                  setState(() {
                    remeber = value;
                  });
                }),
            Text("Tetap Masuk"),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordScreen(),
                    ));
              },
              child: Text(
                "Lupa Password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "MASUK",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RegisterScreen.routeName);
          },
          child: Text(
            "Belum Punya Akun? Daftar Disini",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    ));
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUsername,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Masukan username anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus
                  ? mSubtitleColor
                  : const Color.fromARGB(255, 8, 8, 8)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: 'assets/icons/User.svg',
          )),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukan Password anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus
                  ? const Color.fromARGB(255, 247, 114, 6)
                  : const Color.fromARGB(255, 14, 13, 13)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }
}
