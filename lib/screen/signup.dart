import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_practice_firebase_auth/screen/home.dart';
import 'package:flutter_practice_firebase_auth/screen/login.dart';
import 'package:flutter_practice_firebase_auth/services/auth.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            
            TextField(
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),

            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: (){},
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(

                  onTap: () {
                    // google sign-in method
                  },
              
                  child: Image.asset(
                    'assets/7123025_logo_google_g_icon.png',
                    width: 32,
                    height: 32,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}