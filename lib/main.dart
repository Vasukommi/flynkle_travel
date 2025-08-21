import 'package:flutter/material.dart';
import 'package:flynkle_travel/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

/// Root widget for the Flynkle Travel application.
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
