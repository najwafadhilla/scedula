import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import '../messaging/notifikasi_service.dart';
// import 'firebase_notification_service.dart'; // Impor service notifikasi Firebase
import 'package:scedula/Screen/Login/Loginscreen.dart';
import 'package:scedula/Screen/Register/registrasi.dart';

class WelcomeScreen extends StatefulWidget {
  static String routeName = "/welcome";
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  FirebaseNotificationService _notificationService =
      FirebaseNotificationService();

  @override
  void initState() {
    super.initState();
    // Inisialisasi Firebase Notification Service
    _notificationService.initialize(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFECEFF1),
              Color(0xFFECEFF1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image(
                image: AssetImage('assets/images/gambar1.png'),
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Loginscreen();
                    },
                  ),
                );
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.orange, width: 2),
                ),
                child: Center(
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ),
                );
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: const Color.fromARGB(255, 254, 253, 252)),
                ),
                child: Center(
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
