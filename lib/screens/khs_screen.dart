import 'package:flutter/material.dart';

class KHSScreen extends StatelessWidget {
  const KHSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KHS'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman KHS'),
      ),
    );
  }
}
