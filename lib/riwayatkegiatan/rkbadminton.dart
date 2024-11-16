import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scedula/header/riwayat.dart';
import 'package:scedula/theme/color_theme.dart';

class Rkbadminton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Riwayat Kegiatan',
          style: GoogleFonts.inter(fontSize: 20, color: blackColor),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Riwayat(
        gambar: 'assets/images/badminton.png',
        tek1: "Badminton",
        tek2: "Latihan di Gor unimal",
        tek3: "13 Sep 2023, 14.00",
      ),
    );
  }
}
