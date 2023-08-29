// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyA_2hBP037w8UsCrGYGLzb4PGJqepdjFTA',
    appId: '1:148865850063:web:7ec3504a2a90703b9cb5ba',
    messagingSenderId: '148865850063',
    projectId: 'authuser-6dec7',
    authDomain: 'authuser-6dec7.firebaseapp.com',
    storageBucket: 'authuser-6dec7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDlQ9Xrjl-k6A_VvMbVwBT7Re8mDi-Ycb0',
    appId: '1:148865850063:android:9a5e3ae68fa076b89cb5ba',
    messagingSenderId: '148865850063',
    projectId: 'authuser-6dec7',
    storageBucket: 'authuser-6dec7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbdWnKzBrH2yiG2OFEC2qzmk5eFi_GGto',
    appId: '1:148865850063:ios:31140d1dfc54e5ea9cb5ba',
    messagingSenderId: '148865850063',
    projectId: 'authuser-6dec7',
    storageBucket: 'authuser-6dec7.appspot.com',
    iosClientId: '148865850063-cjbvo2j45d93g06q5gqa3ulqs3cer0gf.apps.googleusercontent.com',
    iosBundleId: 'com.myorg.dashboardLogin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbdWnKzBrH2yiG2OFEC2qzmk5eFi_GGto',
    appId: '1:148865850063:ios:f8f08b369850d0319cb5ba',
    messagingSenderId: '148865850063',
    projectId: 'authuser-6dec7',
    storageBucket: 'authuser-6dec7.appspot.com',
    iosClientId: '148865850063-ta9hfvruv5u7dq9kv0qn735jdfua3ius.apps.googleusercontent.com',
    iosBundleId: 'com.myorg.dashboardLogin.RunnerTests',
  );
}
