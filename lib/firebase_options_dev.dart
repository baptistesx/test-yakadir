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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBjvymhIVgdm0ULQ5nJi8aQkvYhqCssaQI',
    appId: '1:737929939750:android:e10381b8cff94fa1b80fe7',
    messagingSenderId: '737929939750',
    projectId: 'heroic-nlp',
    databaseURL:
        'https://heroic-nlp-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'heroic-nlp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4JvOd-stj58BZC0SmX6ezjT0iJH03-Do',
    appId: '1:737929939750:ios:6da3cfc01228e8dfb80fe7',
    messagingSenderId: '737929939750',
    projectId: 'heroic-nlp',
    databaseURL:
        'https://heroic-nlp-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'heroic-nlp.appspot.com',
    iosClientId:
        '737929939750-o3qkdo7uaogo0f8rqn0vbki1fblprl2p.apps.googleusercontent.com',
    iosBundleId: 'com.speech2sense.yakadir',
  );
}
