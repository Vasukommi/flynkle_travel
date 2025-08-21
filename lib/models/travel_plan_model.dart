// lib/models/travel_plan_model.dart
// A class to hold the data for a single travel plan.

class TravelPlan {
  final String userAvatarUrl;
  final List<String>
  countryFlagUrls; // Changed to a list to support multiple flags
  final String title;
  final String date;
  final String location;

  TravelPlan({
    required this.userAvatarUrl,
    required this.countryFlagUrls,
    required this.title,
    required this.date,
    required this.location,
  });
}
