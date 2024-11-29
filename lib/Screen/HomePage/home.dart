import 'package:flutter/material.dart';
import 'package:scedula/Screen/HomePage/calender.dart';
import 'package:scedula/editProfil/profile.dart';
import 'package:scedula/homeBid/homeFutsal.dart';
import 'package:scedula/homeBid/homeSanggar.dart';
import 'package:scedula/homeBid/homebadminton.dart';
import 'package:scedula/homeBid/homebasket.dart';
import 'package:scedula/homeBid/homeml.dart';
import 'package:scedula/homeBid/homevoly.dart';
import 'package:scedula/proker/badminton.dart';
import 'package:scedula/proker/basket.dart';
import 'package:scedula/proker/futsal.dart';
import 'package:scedula/proker/ml.dart';
import 'package:scedula/proker/sanggar.dart';
import 'package:scedula/proker/voly.dart';
import 'package:scedula/theme/color_theme.dart';
import 'package:scedula/theme/fonts_theme.dart';
import 'package:scedula/notifikasi/notifikasi.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90),
        child: Container(
          height: 44,
          width: 202,
          decoration: BoxDecoration(
            color: orangeColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home_filled,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Calender(),
                      ));
                },
                child: Icon(
                  Icons.calendar_month_rounded,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ));
                },
                child: Icon(
                  Icons.person_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 39,
            left: 22,
            right: 22,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/profil.png",
                        width: 46,
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      Column(
                        children: [
                          Text(
                            "Hallo!\nDio Harahap",
                            style: regularBlackText.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationPage(),
                          ));
                    },
                    child: Image.asset(
                      "assets/icons/notifikasi.png",
                      width: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 366,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: orangeColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 14,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Minat & Bakat",
                            style: regularBlackText.copyWith(
                              fontSize: 27,
                            ),
                          ),
                          Text(
                            "Cakrawala 2023/2024",
                            style: regularBlackText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/gambar 2.png",
                        width: 149,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  "Sports List",
                  style: regularBlackText.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homesanggar(),
                            ));
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SizedBox(
                              width: 97,
                              height: 78,
                              child: Image.asset(
                                "assets/images/sanggar.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Sanggar",
                            style: regularBlackText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeBadminton(),
                            ));
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SizedBox(
                              width: 97,
                              height: 78,
                              child: Image.asset(
                                "assets/images/badminton.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Badminton",
                            style: regularBlackText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeFutsal(),
                            ));
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SizedBox(
                              width: 97,
                              height: 78,
                              child: Image.asset(
                                "assets/images/futsal.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Futsal",
                            style: regularBlackText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homebasket(),
                            ));
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SizedBox(
                              width: 97,
                              height: 78,
                              child: Image.asset(
                                "assets/images/bola_basket.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Basket",
                            style: regularBlackText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homevoly(),
                            ));
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homevoly(),
                              ));
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: SizedBox(
                                width: 97,
                                height: 78,
                                child: Image.asset(
                                  "assets/images/voly.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Volley",
                              style: regularBlackText.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeMl(),
                            ));
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SizedBox(
                              width: 97,
                              height: 78,
                              child: Image.asset(
                                "assets/images/ml.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Mobile Legends",
                            style: regularBlackText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Stack(
                children: <Widget>[
                  Text(
                    'Proker',
                    style: TextStyle(
                      fontSize: 25,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = blackColor,
                    ),
                  ),
                  const Text(
                    'Proker',
                    style: TextStyle(
                      fontSize: 25,
                      color: orangeColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sanggar()));
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 10,
                  ),
                  width: double.infinity,
                  height: 94,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: orangeColor,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 93,
                          height: 78,
                          child: Image.asset(
                            "assets/images/sanggar.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sanggar",
                            style: regularOrangeText.copyWith(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Latihan di sanggar Unimal",
                            style: regularGreyText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 107,
                            ),
                            child: Text(
                              "13 Sep 2024, 16.00",
                              style: regularBrownText.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Badminton(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 10,
                  ),
                  width: double.infinity,
                  height: 94,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: orangeColor,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 93,
                          height: 78,
                          child: Image.asset(
                            "assets/images/badminton.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Badminton",
                            style: regularOrangeText.copyWith(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Latihan  badminton di gor unimal",
                            style: regularGreyText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 107,
                            ),
                            child: Text(
                              "13 Sep 2024, 16.00",
                              style: regularBrownText.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Voly(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 10,
                  ),
                  width: double.infinity,
                  height: 94,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: orangeColor,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 93,
                          height: 78,
                          child: Image.asset(
                            "assets/images/voly.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Volley",
                            style: regularOrangeText.copyWith(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Latihan di lap.volley Unimal",
                            style: regularGreyText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 107,
                            ),
                            child: Text(
                              "13 Sep 2024, 16.00",
                              style: regularBrownText.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Futsal()));
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 10,
                  ),
                  width: double.infinity,
                  height: 94,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: orangeColor,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 93,
                          height: 78,
                          child: Image.asset(
                            "assets/images/futsal.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Futsal",
                            style: regularOrangeText.copyWith(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Latihan di Lap.Futsal Unimal",
                            style: regularGreyText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 107,
                            ),
                            child: Text(
                              "13 Sep 2024, 16.00",
                              style: regularBrownText.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Basket(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 10,
                  ),
                  width: double.infinity,
                  height: 94,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: orangeColor,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 93,
                          height: 78,
                          child: Image.asset(
                            "assets/images/bola_basket.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Basket",
                            style: regularOrangeText.copyWith(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Latihan di Lap.Basket Unimal",
                            style: regularGreyText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 107,
                            ),
                            child: Text(
                              "13 Sep 2024, 16.00",
                              style: regularBrownText.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Ml(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 10,
                  ),
                  width: double.infinity,
                  height: 94,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: orangeColor,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 93,
                          height: 78,
                          child: Image.asset(
                            "assets/images/ml.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mobile Legends",
                            style: regularOrangeText.copyWith(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Latihan di warkop dubai",
                            style: regularGreyText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 107,
                            ),
                            child: Text(
                              "13 Sep 2024, 16.00",
                              style: regularBrownText.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
