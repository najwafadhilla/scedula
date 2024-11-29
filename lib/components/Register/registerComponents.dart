import 'package:flutter/material.dart';
import 'package:scedula/components/Register/registerfrom.dart';
import 'package:scedula/size_config.dart';
import 'package:scedula/utils/constants.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Registercomponents extends StatefulWidget {
  const Registercomponents({super.key});

  @override
  _RegisterComponentState createState() => _RegisterComponentState();
}

class _RegisterComponentState extends State<Registercomponents> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SimpleShadow(
                  child: const Text(
                    "Daftar Akun",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  opacity: 0.5,
                  color: const Color.fromARGB(255, 241, 112, 6),
                  offset: const Offset(5, 5),
                  sigma: 2,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
