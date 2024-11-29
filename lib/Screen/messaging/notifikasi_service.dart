import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseNotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initialize(BuildContext context) async {
    // Inisialisasi notifikasi lokal
    var initializationSettingsAndroid = AndroidInitializationSettings(
        'ic_launcher'); // Ganti dengan ikon aplikasi Anda
    var initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    // Mendapatkan token perangkat
    _firebaseMessaging.getToken().then((String? token) {
      print('Token FCM: $token');
    });

    // Listener untuk notifikasi di foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Notifikasi diterima: ${message.notification?.title}');
      _showNotification(
        message.notification?.title ?? 'No Title',
        message.notification?.body ?? 'No Body',
      );
    });

    // Listener untuk notifikasi ketika aplikasi dibuka dari klik
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Pesan diklik: ${message.notification?.title}');
    });
  }

  // Menampilkan notifikasi di toolbar notifikasi
  Future<void> _showNotification(String title, String body) async {
    var androidDetails = AndroidNotificationDetails(
      'your_channel_id', // ID channel
      'Your Channel Name', // Nama channel
      channelDescription: 'Your channel description',
      importance: Importance.high,
      priority: Priority.high,
    );

    var platformDetails = NotificationDetails(android: androidDetails);

    // Tampilkan notifikasi
    await flutterLocalNotificationsPlugin.show(
      0, // ID notifikasi
      title,
      body,
      platformDetails,
    );
  }
}
