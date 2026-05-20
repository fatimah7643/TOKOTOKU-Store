import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: color.withOpacity(0.15),
          child: Icon(icon, color: color, size: 26),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 11),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
