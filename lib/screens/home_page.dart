// lib/screens/home_page.dart
// The home page screen, now with the Discounts section.

import 'package:flutter/material.dart';
import 'package:flynkle_travel/widgets/custom_header.dart'; // Replace with your app name
import 'package:flynkle_travel/widgets/trending_destinations.dart'; // Replace with your app name
import 'package:flynkle_travel/widgets/travel_plans_section.dart'; // Replace with your app name
import 'package:flynkle_travel/widgets/discounts_section.dart'; // Replace with your app name

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:
          Colors.transparent, // Uses the main scaffold's background color
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeader(),
            SizedBox(height: 10), // A little space after the header
            TrendingDestinations(),
            TravelPlansSection(),
            DiscountsSection(),
            // You can add more sections below here
          ],
        ),
      ),
    );
  }
}
