import 'package:flutter/material.dart';

class GuidanceScreen extends StatelessWidget {
  const GuidanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bimbingan'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Bimbingan'),
      ),
    );
  }
}
