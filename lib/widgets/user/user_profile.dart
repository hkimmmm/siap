import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String imageUrl;
  final String userName;
  final String userJob;
  final Color textColor; // Menambahkan textColor sebagai parameter

  const UserProfile({
    super.key,
    required this.imageUrl,
    required this.userName,
    required this.userJob,
    required this.textColor, // Menandai textColor sebagai required
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius:
              30, // Perbesar ukuran avatar (35 adalah contoh, sesuaikan sesuai kebutuhan)
          backgroundImage: NetworkImage(imageUrl),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18, // Perbesar ukuran font untuk nama
                color: textColor, // Mengatur warna teks sesuai textColor
              ),
            ),
            Text(
              userJob,
              style: const TextStyle(
                fontSize: 14, // Perbesar ukuran font untuk jabatan
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
