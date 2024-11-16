import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scedula/theme/color_theme.dart';

class Riwayat extends StatelessWidget {
  
  final String gambar;
  final String tek1;
  final String tek2;
  final String tek3;

  const Riwayat({
    super.key,
    required this.gambar,
    required this.tek1,
    required this.tek2,
    required this.tek3,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: ListTile(
            leading: Image.asset(
              gambar,
            ),
            title: Text(
              tek1,
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: orangeColor,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tek2,
                  style: GoogleFonts.inter(fontSize: 13, color: blackColor),
                ),
                Text(
                  tek3,
                  style: GoogleFonts.inter(
                      fontSize: 13,
                      color: const Color.fromRGBO(207, 158, 118, 1)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
