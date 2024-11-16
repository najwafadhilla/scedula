import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scedula/theme/color_theme.dart';

class Proker extends StatelessWidget {
  final String imageUrl;
  final String title;
  const Proker({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 270,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: orangeColor),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: SizedBox(
              width: 145,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Image.asset(
                      imageUrl,
                      height: 187,
                      width: 145,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: orangeColor,
            ),
          ),
        ],
      ),
    );
  }
}
