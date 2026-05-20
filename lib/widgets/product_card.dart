import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;
  final String sold;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.sold,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8),
            ),
            child: Image.network(
              imageUrl,
              height: 130,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (ctx, err, _) => Container(
                height: 130,
                color: Colors.grey[200],
                child: const Icon(Icons.image_not_supported),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEE4D2D),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Terjual $sold',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[600],
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