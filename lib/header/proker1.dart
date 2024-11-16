import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scedula/theme/color_theme.dart';

class prokerr extends StatelessWidget {
  final String imageUrll;
  final String titlee;
  final String text2;
  final String text3;
  const prokerr({
    super.key,
    required this.imageUrll,
    required this.titlee,
    required this.text2,
    required this.text3,
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
              imageUrll,
            ),
            title: Text(
              titlee,
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
                  text2,
                  style: GoogleFonts.inter(fontSize: 13, color: blackColor),
                ),
                Text(
                  text3,
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
