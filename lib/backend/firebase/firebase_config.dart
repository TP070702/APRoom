import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDLnuhs_XV_sH-gFBlZJiI8RLiLW60i1kg",
            authDomain: "a-p-room-eyswox.firebaseapp.com",
            projectId: "a-p-room-eyswox",
            storageBucket: "a-p-room-eyswox.firebasestorage.app",
            messagingSenderId: "111113978660",
            appId: "1:111113978660:web:f68f95a7d3c6cc86ec69b1"));
  } else {
    await Firebase.initializeApp();
  }
}
