import 'package:flutter/material.dart';
import 'package:tugas1/pages/SignUp.dart';
import 'package:tugas1/pages/SignIn.dart';
import 'package:tugas1/pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas1',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => SignUpScreen(),
        '/signin': (context) => SignInScreen(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
