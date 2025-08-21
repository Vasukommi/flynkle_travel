// lib/main.dart
// This file is now much cleaner and only handles the app's entry point.

import 'package:flutter/material.dart';
import 'package:flynkle_travel/screens/main_screen.dart'; // Make sure to replace your_app_name with your actual project name

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventure App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color(0xFFF4F6F8),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
