// lib/widgets/discounts_section.dart
// This widget displays the "Fancy a discount?" section.

import 'package:flutter/material.dart';
import 'package:flynkle_travel/models/destination_model.dart'; // Replace with your app name
import 'package:flynkle_travel/widgets/discount_card.dart'; // Replace with your app name

class DiscountsSection extends StatelessWidget {
  const DiscountsSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for discount destinations
    final List<Destination> discountDestinations = [
      Destination(
        imageUrl:
            'https://cdn.pixabay.com/photo/2020/03/09/21/30/museum-4917179_1280.jpg',
        city: 'Barcelona',
      ),
      Destination(
        imageUrl:
            'https://cdn.pixabay.com/photo/2019/02/26/05/44/fireworks-4021214_1280.jpg',
        city: 'Sydney',
      ),
      Destination(
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/12/03/11/11/masks-1879572_1280.jpg',
        city: 'Venice',
      ),
      Destination(
        imageUrl:
            'https://cdn.pixabay.com/photo/2014/03/30/14/38/bali-301462_1280.jpg',
        city: 'Bali',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Header
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Fancy a discount?',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.pink[400],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Find the best deals!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Horizontal List of Cards
        SizedBox(
          height: 250.0,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 20.0),
            scrollDirection: Axis.horizontal,
            itemCount: discountDestinations.length,
            itemBuilder: (BuildContext context, int index) {
              return DiscountCard(destination: discountDestinations[index]);
            },
          ),
        ),
      ],
    );
  }
}
