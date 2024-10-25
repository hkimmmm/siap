import 'package:flutter/material.dart';

class ConsultationScreen extends StatelessWidget {
  const ConsultationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konsultasi Dosen'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Konsultasi Dosen'),
      ),
    );
  }
}
