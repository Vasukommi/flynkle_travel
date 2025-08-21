import 'package:flutter/material.dart';
import 'package:flynkle_travel/screens/home_page.dart';
import 'package:flynkle_travel/screens/trips_page.dart';
import 'package:flynkle_travel/screens/chat_page.dart';
import 'package:flynkle_travel/screens/events_page.dart';
import 'package:flynkle_travel/screens/profile_page.dart';
import 'package:flynkle_travel/widgets/custom_bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

/// Holds the main navigation scaffold and bottom navigation bar.
class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    TripsPage(),
    ChatPage(),
    EventsPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _widgetOptions),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
