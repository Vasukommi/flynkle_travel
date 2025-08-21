import 'package:flutter/material.dart';
import 'package:flynkle_travel/models/destination_model.dart';

/// Card used within the discounts section.
class DiscountCard extends StatelessWidget {
  final Destination destination;

  const DiscountCard({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0, top: 10.0, bottom: 10.0),
      width: 220.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.network(
                destination.imageUrl,
                fit: BoxFit.cover,
                loadingBuilder:
                    (
                      BuildContext context,
                      Widget child,
                      ImageChunkEvent? loadingProgress,
                    ) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator());
                    },
                errorBuilder:
                    (
                      BuildContext context,
                      Object exception,
                      StackTrace? stackTrace,
                    ) {
                      return const Icon(Icons.error, color: Colors.red);
                    },
              ),
            ),
            // Gradient overlay improves text contrast.
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20.0,
              left: 20.0,
              child: Text(
                destination.city,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
