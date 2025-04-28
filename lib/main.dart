import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_firebase_auth/screen/forget_password.dart';
import 'package:flutter_practice_firebase_auth/screen/home.dart';
import 'package:flutter_practice_firebase_auth/screen/login.dart';
import 'package:flutter_practice_firebase_auth/screen/signup.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    await Firebase.initializeApp(options: FirebaseOptions(
      apiKey: "AIzaSyDQ0C6jTQHMTveVWoc0sQ2YJAO-qly4xfU",
      authDomain: "practicefirebaseauth-7cebe.firebaseapp.com",
      projectId: "practicefirebaseauth-7cebe",
      storageBucket: "practicefirebaseauth-7cebe.firebasestorage.app",
      messagingSenderId: "141426813918",
      appId: "1:141426813918:web:49a20641d9df0fef8d0b4f",
      measurementId: "G-4Y72557Q21"
    ));
  }else{
    await Firebase.initializeApp();
  }

  if(kIsWeb){
    runApp(
      // Enable DevicePreview in Debug Builds Only
      DevicePreview(
        enabled: !kReleaseMode, // Disabled in release builds
        builder: (context) => MyApp(),
      ),
    );
  }else{
    runApp(MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/home': (context) => Home(),
        '/forgot_password': (context) => ForgotPassword(),
      },
    );
  }
}

