import 'package:flutter/material.dart';
import '../size_config.dart';

class DefaultButtonCustomeColor extends StatelessWidget {
  final String? text;
  final Color? color;
  final Function? press;

  const DefaultButtonCustomeColor({
    Key? key,
    required this.color, // 'required' ditempatkan dengan benar
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          foregroundColor: Colors.white,
          backgroundColor: color, // Memastikan color diterapkan
        ),
        onPressed: press != null ? () => press!() : null, // Null safety
        child: Text(
          text ?? '', // Menambahkan null safety untuk text
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
