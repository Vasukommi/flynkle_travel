// lib/widgets/travel_plans_section.dart
// This widget displays the "Travel Plans" section.

import 'package:flutter/material.dart';
import 'package:flynkle_travel/models/travel_plan_model.dart'; // Replace with your app name
import 'package:flynkle_travel/widgets/travel_plan_card.dart'; // Replace with your app name

class TravelPlansSection extends StatelessWidget {
  const TravelPlansSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for travel plans, now using a list for flags
    final List<TravelPlan> travelPlans = [
      TravelPlan(
        userAvatarUrl:
            'https://cdn.pixabay.com/photo/2023/06/05/08/49/sea-8041734_1280.jpg',
        countryFlagUrls: ['https://flagcdn.com/w320/hr.png'],
        title: 'Solo travelling Split 20th - 23rd August',
        date: 'Aug 2025',
        location: 'Croatia',
      ),
      TravelPlan(
        userAvatarUrl:
            'https://cdn.pixabay.com/photo/2020/06/15/17/10/ancient-5302626_1280.jpg',
        countryFlagUrls: [
          'https://flagcdn.com/w320/cz.png',
          'https://flagcdn.com/w320/de.png',
        ], // This plan now has two flags
        title: 'Europe trip',
        date: 'Aug - Sep 2025',
        location: 'Czech Republic',
      ),
      TravelPlan(
        userAvatarUrl:
            'https://cdn.pixabay.com/photo/2020/04/09/14/32/japan-5021733_1280.jpg',
        countryFlagUrls: ['https://flagcdn.com/w320/jp.png'],
        title: 'Japan adventure!',
        date: 'Sep 2025',
        location: 'Japan',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          // Section Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Travel Plans',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'The best place to find travel buddies! See everyone\'s plans and share your own',
                        style: TextStyle(fontSize: 14.0, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // Horizontal List of Cards
          SizedBox(
            height: 240.0,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 20.0),
              scrollDirection: Axis.horizontal,
              itemCount: travelPlans.length,
              itemBuilder: (BuildContext context, int index) {
                return TravelPlanCard(plan: travelPlans[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
