import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;

  const ProfileScreen({
    super.key,
    required this.name,
    required this.role,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage(imageUrl),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              role,
              style: const TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
