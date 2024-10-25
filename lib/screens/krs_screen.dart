import 'package:flutter/material.dart';

class KRSScreen extends StatelessWidget {
  const KRSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KRS'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman KRS'),
      ),
    );
  }
}
