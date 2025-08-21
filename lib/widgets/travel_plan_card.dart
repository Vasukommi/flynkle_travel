// lib/widgets/travel_plan_card.dart
// A card to display a single travel plan.

import 'package:flutter/material.dart';
import 'package:flynkle_travel/models/travel_plan_model.dart'; // Replace with your app name

class TravelPlanCard extends StatelessWidget {
  final TravelPlan plan;

  const TravelPlanCard({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: const EdgeInsets.only(right: 15.0, top: 10.0, bottom: 20.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Overlapping Avatars
          SizedBox(
            height: 50,
            // The Stack's parent needs a defined width to prevent its positioned
            // children from being clipped.
            child: Stack(
              children: [
                // User Avatar is always the first element
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: NetworkImage(plan.userAvatarUrl),
                ),
                // Generate flag avatars from the list
                ...List.generate(plan.countryFlagUrls.length, (index) {
                  // We limit to showing a max of 2-3 flags to avoid overflow
                  if (index > 1) return const SizedBox.shrink();

                  return Positioned(
                    // Each flag is pushed further to the right
                    left: 35.0 * (index + 1),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          plan.countryFlagUrls[index],
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
          const Spacer(),
          // Plan Details
          Text(
            plan.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6),
          Text(
            plan.date,
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
          const Spacer(),
          // Location Chip
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey[700]),
                const SizedBox(width: 5),
                Text(
                  plan.location,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
