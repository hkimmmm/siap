import 'package:flutter/material.dart';

class TranscriptScreen extends StatelessWidget {
  const TranscriptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transkrip'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Transkrip'),
      ),
    );
  }
}
