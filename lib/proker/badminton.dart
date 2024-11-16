import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scedula/header/proker1.dart';
import 'package:scedula/homeBid/homebadminton.dart';
import 'package:scedula/tambahproker/tambahBadminton.dart';
import 'package:scedula/theme/color_theme.dart';

class Badminton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Program Kerja',
          style: GoogleFonts.inter(fontSize: 20, color: blackColor),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeBadminton(),
                ));          },
        ),
      ),
      body: prokerr(
        imageUrll: 'assets/images/badminton.png',
        titlee: "Badminton",
        text2: "Latihan di Gor unimal",
        text3: "13 Sep 2023, 14.00",
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Tambahbadminton(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
