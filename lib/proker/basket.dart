import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scedula/header/proker1.dart';
import 'package:scedula/homeBid/homebasket.dart';
import 'package:scedula/tambahproker/tambahBasket.dart';
import 'package:scedula/theme/color_theme.dart';

class Basket extends StatelessWidget {
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
                  builder: (context) => Homebasket(),
                ));          },
        ),
      ),
      body: prokerr(
        imageUrll: 'assets/images/bola_basket.png',
        titlee: "Basket",
        text2: "Latihan di lapangan basket unimal",
        text3: "13 Sep 2023, 14.00",
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Tambahbasket(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
