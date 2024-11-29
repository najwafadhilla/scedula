import 'package:flutter/material.dart';
import 'package:scedula/routes.dart';
import 'package:scedula/theme.dart';
import 'package:scedula/Screen/GetStart/WelcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> main() async {
  // Memastikan Flutter telah diinisialisasi dengan benar sebelum melakukan operasi lainnya
  WidgetsFlutterBinding.ensureInitialized();

  // Menginisialisasi Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Menginisialisasi notifikasi Firebase jika aplikasi dijalankan di foreground
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  // Mendapatkan token perangkat untuk notifikasi
  String? token = await messaging.getToken();
  print("Firebase Messaging Token: $token");

  // Listener untuk pesan yang diterima saat aplikasi dalam keadaan foreground
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Pesan diterima: ${message.notification?.title}');
    // Bisa menambahkan dialog atau notifikasi di sini jika diperlukan
  });

  // Listener untuk pesan yang diterima saat aplikasi dibuka dari klik
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('Pesan dibuka: ${message.notification?.title}');
    // Arahkan ke halaman tertentu atau lakukan tindakan lain jika diperlukan
  });

  // Menjalankan aplikasi
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scedula", // Nama aplikasi
      theme: theme(), // Tema aplikasi yang sudah Anda definisikan
      initialRoute: WelcomeScreen.routeName, // Rute awal yang akan dipakai
      routes: routes, // Rute aplikasi yang sudah Anda definisikan
    );
  }
}
