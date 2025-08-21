import 'package:flutter/material.dart';
import 'package:flynkle_travel/widgets/custom_header.dart';
import 'package:flynkle_travel/widgets/trending_destinations.dart';
import 'package:flynkle_travel/widgets/travel_plans_section.dart';
import 'package:flynkle_travel/widgets/discounts_section.dart';

/// Landing page displaying featured content sections.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeader(),
            SizedBox(height: 10),
            TrendingDestinations(),
            TravelPlansSection(),
            DiscountsSection(),
          ],
        ),
      ),
    );
  }
}
