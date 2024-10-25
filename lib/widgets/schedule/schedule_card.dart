import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart'; // Import Heroicons jika digunakan

class ScheduleCard extends StatelessWidget {
  final String date;
  final String day;
  final String course;
  final String time;
  final String mode;
  final String location;
  final String session;
  final VoidCallback onDetailsPressed;
  final VoidCallback onSchedulePressed;

  const ScheduleCard({
    super.key,
    required this.date,
    required this.day,
    required this.course,
    required this.time,
    required this.mode,
    required this.location,
    required this.session,
    required this.onDetailsPressed,
    required this.onSchedulePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white, // Mengubah warna card menjadi putih
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian Jadwal Hari Ini
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Jadwal Hari Ini",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "$day, $date",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: onSchedulePressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[100], // Warna hijau muda
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  icon: const HeroIcon(
                    HeroIcons.calendar,
                    size: 16,
                    color: Colors.green,
                  ),
                  label: const Text(
                    "Lihat Jadwal",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            const Divider(),
            // Bagian detail mata kuliah
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.access_time,
                            size: 16,
                            color: Color.fromARGB(
                                255, 0, 0, 0)), // Ubah warna ikon
                        const SizedBox(width: 4),
                        Text(
                          time,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    Text(
                      "$mode - $location",
                      style:
                          const TextStyle(color: Colors.orange, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  session,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: onDetailsPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("Lihat Detail",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
