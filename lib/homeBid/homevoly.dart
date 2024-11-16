import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scedula/Screen/HomePage/home.dart';
import 'package:scedula/daftaranggota/anggotavoly.dart';
import 'package:scedula/homebid2/proker.dart';
import 'package:scedula/proker/voly.dart';
import 'package:scedula/riwayatkegiatan/rkvolly.dart';
import 'package:scedula/theme/color_theme.dart';

class Homevoly extends StatelessWidget {
  const Homevoly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 411,
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: orangeColor),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 10,
                          right: 0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 6,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ));
                                },
                                child: Image.asset(
                                  "assets/images/back.png",
                                  width: 32,
                                  height: 29,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Voly",
                                  style: GoogleFonts.inter(
                                      fontSize: 33, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Cakrawala 2023/2024",
                                  style: GoogleFonts.inter(
                                      fontSize: 13, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Image.asset(
                                "assets/images/voly.png",
                                width: 124,
                                height: 116,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Wrap(
                spacing: 20,
                runSpacing: 16,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Anggotavoly(),
                          ));
                    },
                    child: Proker(
                        imageUrl: "assets/images/anggota.png",
                        title: "Daftar\nAnggota"),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Voly(),
                          ));
                    },
                    child: Proker(
                        imageUrl: "assets/images/programkerja.png",
                        title: "Program\n Kerja"),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Rkvolly(),
                          ));
                    },
                    child: Proker(
                        imageUrl: "assets/images/riwayat.png",
                        title: "Riwayat \n Kegiatan"),
                  ),
                  Proker(
                      imageUrl: "assets/images/absensi.png",
                      title: "Absensi \nAnggota"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
