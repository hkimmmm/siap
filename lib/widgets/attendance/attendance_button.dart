import 'package:flutter/material.dart';

class AttendanceButton extends StatelessWidget {
  const AttendanceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Action for attendance
      },
      icon: const Icon(Icons.task_alt),
      label: const Text('Absen Masuk'),
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 62, 180, 137)),
    );
  }
}
