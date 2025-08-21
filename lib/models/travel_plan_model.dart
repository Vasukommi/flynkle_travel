/// Model describing a user's travel plan.
class TravelPlan {
  final String userAvatarUrl;

  /// URLs for country flags associated with the plan.
  final List<String> countryFlagUrls;
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
