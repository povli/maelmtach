import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB0K3MUralTVLjZxVbYo6YcCUZzrKgMBBo",
            authDomain: "school-deliver-and-love.firebaseapp.com",
            projectId: "school-deliver-and-love",
            storageBucket: "school-deliver-and-love.appspot.com",
            messagingSenderId: "921675391457",
            appId: "1:921675391457:web:05c867790aeb3d2af972a0",
            measurementId: "G-QKCWWQ8FQZ"));
  } else {
    await Firebase.initializeApp();
  }
}
