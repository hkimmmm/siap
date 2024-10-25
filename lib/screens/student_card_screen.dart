import 'package:flutter/material.dart';

class StudentCardScreen extends StatelessWidget {
  const StudentCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kartu Mahasiswa'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Kartu Mahasiswa'),
      ),
    );
  }
}
