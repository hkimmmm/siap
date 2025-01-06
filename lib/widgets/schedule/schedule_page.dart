import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Contoh data jadwal
    final schedules = [
      {
        "course": "Ekspor dan Impor",
        "time": "14:40 - 16:20",
        "mode": "Offline",
        "location": "FLTB 302",
      },
      {
        "course": "Algoritma dan Pemrograman",
        "time": "09:00 - 11:30",
        "mode": "Online",
        "location": "Zoom Meeting",
      },
      {
        "course": "Desain Sistem Informasi",
        "time": "13:00 - 14:30",
        "mode": "Offline",
        "location": "FLTB 101",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Jadwal Perkuliahan"),
        backgroundColor: const Color.fromARGB(255, 62, 140, 241),
      ),
      body: ListView.builder(
        itemCount: schedules.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          final schedule = schedules[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              title: Text(
                schedule["course"] ?? "",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Waktu: ${schedule["time"]}"),
                  Text("Mode: ${schedule["mode"]}"),
                  Text("Lokasi: ${schedule["location"]}"),
                ],
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
