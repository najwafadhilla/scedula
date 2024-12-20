// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAGQTpRfeKQQinGMtHNuT0KCz1Db4qglnw',
    appId: '1:347122962249:web:bdf0fc5a40c64886a59498',
    messagingSenderId: '347122962249',
    projectId: 'scedula-d5854',
    authDomain: 'scedula-d5854.firebaseapp.com',
    storageBucket: 'scedula-d5854.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-4i7qMJvjBBn-ztSrleD1divD8qOWcjw',
    appId: '1:347122962249:android:d409cfa97daf9782a59498',
    messagingSenderId: '347122962249',
    projectId: 'scedula-d5854',
    storageBucket: 'scedula-d5854.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDsVbXgluaTQveIyaz3sn5RtEXoWSoCf_Y',
    appId: '1:347122962249:ios:01d84a803aa037fda59498',
    messagingSenderId: '347122962249',
    projectId: 'scedula-d5854',
    storageBucket: 'scedula-d5854.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication2',
  );
}
