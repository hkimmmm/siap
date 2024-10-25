import 'package:flutter/material.dart';
import 'package:siap/screens/profile_screen.dart';
import '../schedule/schedule_card.dart'; // Import ScheduleCard
import '../buttons/notification_button.dart'; // Komponen NotificationButton

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350, // Sesuaikan tinggi AppBar
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 62, 140, 241), // Warna latar belakang
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20.0), // Menghaluskan sudut bawah
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Padding di sekitar konten
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileScreen(
                  name: "Muhamad Ainul Hakim",
                  role: "Mahasiswa",
                  imageUrl: 'assets/images/profile.jpg',
                ),
                NotificationButton(),
              ],
            ),
            const SizedBox(height: 16), // Spacer antara baris
            ScheduleCard(
              date: "Selasa, 27 Feb",
              day: "Selasa",
              course: "Ekspor impor",
              time: "14:40 - 16:20",
              mode: "Offline",
              location: "FLTB 302",
              session: "Sesi 1: Belum ada topik",
              onDetailsPressed: () {
                // Aksi ketika tombol 'Lihat Detail' ditekan
              },
              onSchedulePressed: () {
                // Aksi ketika tombol 'Lihat Jadwal' ditekan
              },
            ),
          ],
        ),
      ),
    );
  }
}
