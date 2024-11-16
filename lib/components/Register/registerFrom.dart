import 'package:flutter/material.dart';
import 'package:scedula/components/custom_surfix_icon.dart';
import 'package:scedula/components/default_button_custome_color.dart';
import 'package:scedula/size_config.dart';
import 'package:scedula/utils/constants.dart';
import 'package:scedula/Screen/Login/Loginscreen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpForm createState() => _SignUpForm();
}

class _SignUpForm extends State<SignUpForm> {
//  final _formKey = GlobalKey<FormState>();
  String? namalengkap;
  String? username;
  String? email;
  String? password;
  bool? remeber = false;

  TextEditingController txtNamaLengkap = TextEditingController(),
      txtUsername = TextEditingController(),
      txtEmail = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        buildNamaLengkap(),
        SizedBox(height: getProportionateScreenHeight(30)),
        buildUserName(),
        SizedBox(height: getProportionateScreenHeight(30)),
        buildEmail(),
        SizedBox(height: getProportionateScreenHeight(30)),
        buildPassword(),
        SizedBox(height: getProportionateScreenHeight(30)),
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "Register",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Loginscreen();
                },
              ),
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Loginscreen.routeName);
          },
          child: const Text(
            "Sudah punya akun? Masuk Disini",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    ));
  }

  TextFormField buildNamaLengkap() {
    return TextFormField(
      controller: txtNamaLengkap,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'NamaLengkap',
          hintText: 'Masukan Nama Lengkap ',
          labelStyle: TextStyle(
              color: focusNode.hasFocus
                  ? mSubtitleColor
                  : const Color.fromARGB(255, 6, 6, 6)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: const CustomSurffixIcon(
            svgIcon: 'assets/icons/User.svg',
          )),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUsername,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Masukan Username',
          labelStyle: TextStyle(
              color: focusNode.hasFocus
                  ? mSubtitleColor
                  : const Color.fromARGB(255, 9, 9, 9)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: const CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: txtEmail,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Masukan Email',
        labelStyle: TextStyle(
            color: focusNode.hasFocus
                ? mSubtitleColor
                : const Color.fromARGB(255, 9, 9, 9)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSurffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukan Password',
          labelStyle: TextStyle(
              color: focusNode.hasFocus
                  ? mSubtitleColor
                  : const Color.fromARGB(255, 16, 16, 16)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: const CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }
}
