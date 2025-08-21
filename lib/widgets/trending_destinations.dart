import 'package:flutter/material.dart';
import 'package:flynkle_travel/models/destination_model.dart';
import 'package:flynkle_travel/widgets/destination_card.dart';

/// Horizontal list showcasing trending destinations.
class TrendingDestinations extends StatelessWidget {
  const TrendingDestinations({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample destination data.
    final List<Destination> destinations = [
      Destination(
        imageUrl:
            'https://cdn.pixabay.com/photo/2022/08/21/14/32/london-7401433_1280.jpg',
        city: 'London',
      ),
      Destination(
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/04/25/09/41/alley-738844_1280.jpg',
        city: 'Paris',
      ),
      Destination(
        imageUrl:
            'https://cdn.pixabay.com/photo/2025/03/31/21/30/italy-9505446_1280.jpg',
        city: 'Rome',
      ),
      Destination(
        imageUrl:
            'https://cdn.pixabay.com/photo/2024/03/20/12/36/tokyo-skytree-8645455_1280.jpg',
        city: 'Tokyo',
      ),
      Destination(
        imageUrl:
            'https://cdn.pixabay.com/photo/2019/06/09/21/54/santorini-4263036_1280.jpg',
        city: 'Santorini',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(
            'Trending Destinations',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
        SizedBox(
          height: 220.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              // Add padding to the first item for spacing from the edge
              final bool isFirst = index == 0;
              return Padding(
                padding: EdgeInsets.only(left: isFirst ? 20.0 : 0.0),
                child: DestinationCard(destination: destinations[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
