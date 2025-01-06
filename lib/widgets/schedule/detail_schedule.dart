import 'package:flutter/material.dart';

class DetailSchedulePage extends StatelessWidget {
  final String course;
  final String time;
  final String mode;
  final String location;
  final String session;

  const DetailSchedulePage({
    super.key,
    required this.course,
    required this.time,
    required this.mode,
    required this.location,
    required this.session,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Jadwal"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text("Waktu: $time", style: const TextStyle(fontSize: 16)),
            Text("Mode: $mode", style: const TextStyle(fontSize: 16)),
            Text("Lokasi: $location", style: const TextStyle(fontSize: 16)),
            Text("Sesi: $session", style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
