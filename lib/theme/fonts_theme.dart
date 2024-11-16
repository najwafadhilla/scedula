import 'package:flutter/material.dart';
import 'package:scedula/theme/color_theme.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle regularBlackText = GoogleFonts.inter(fontWeight: FontWeight.w400,
  color: blackColor,);
TextStyle regularOrangeText = GoogleFonts.inter(fontWeight: FontWeight.w400,
  color: orangeColor,);
TextStyle regularGreyText = GoogleFonts.inter(fontWeight: FontWeight.w400,
  color: greyColor,);
TextStyle regularBrownText = GoogleFonts.inter(fontWeight: FontWeight.w400,
  color: LightBrrownColor,);
  

  TextStyle regularBlackBorderText = GoogleFonts.inter(fontWeight: FontWeight.w400,
  color: blackColor,
 foreground: Paint()
 ..style = PaintingStyle.stroke 
 ..strokeWidth = 1
  ..color = Colors.black,
  );