//import 'package:book_info/views/screens/home.dart';
import 'package:book_info/screens/authentication/login.dart';
import 'package:book_info/screens/home.dart';
import 'package:book_info/screens/onboards/onboard_1.dart';
import 'package:flutter/material.dart';

import 'screens/authentication/register_screen.dart';
//import 'package:get/get.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darshan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Onboard1(),
      routes: {
        '/onboard1': (context) => const Onboard1(),
        '/home': (context) => const Home(),
        '/register': (context) => const RegistrationScreen(),
        '/login': (context) => const Login(),
      },
    );
  }
}
