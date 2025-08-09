import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAAhoZIubAgTQ7Hc1UTOf15VUzK30G8DdE",
            authDomain: "meajudastive-u5634n.firebaseapp.com",
            projectId: "meajudastive-u5634n",
            storageBucket: "meajudastive-u5634n.firebasestorage.app",
            messagingSenderId: "431645170436",
            appId: "1:431645170436:web:6237c893c1e4abcfbd4e51"));
  } else {
    await Firebase.initializeApp();
  }
}
