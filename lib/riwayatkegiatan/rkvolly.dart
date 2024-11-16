import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scedula/header/riwayat.dart';
import 'package:scedula/theme/color_theme.dart';

class Rkvolly extends StatelessWidget {
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
        gambar: 'assets/images/voly.png',
        tek1: "volly",
        tek2: "Latihan di GOR unimal",
        tek3: "13 Sep 2023, 14.00",
      ),
    );
  }
}
