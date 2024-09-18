import 'package:flutter/material.dart';
import 'package:tugas1/pages/SignUp.dart'; // Pastikan ini mengarah ke file SignUp.dart yang benar
import 'package:tugas1/pages/Home.dart'; // Tambahkan import untuk Home.dart
import 'package:tugas1/pages/SignIn.dart'; // Tambahkan import untuk SignIn.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth Screens',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/signup', // Set the initial route to SignUp
      routes: {
        '/signup': (context) => SignUpScreen(), // Route ke halaman SignUp
        '/signin': (context) => SignInScreen(), // Route ke halaman SignIn
        '/home': (context) => HomePage(), // Route ke halaman Home
      },
    );
  }
}
