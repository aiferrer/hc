import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCSWGbV5XrYSRTXEJ0rhK5vi-3Nz9_AmUc",
            authDomain: "hc-auth-636a3.firebaseapp.com",
            projectId: "hc-auth-636a3",
            storageBucket: "hc-auth-636a3.appspot.com",
            messagingSenderId: "165576121919",
            appId: "1:165576121919:web:2457613fb04c1d51dea28a"));
  } else {
    await Firebase.initializeApp();
  }
}
