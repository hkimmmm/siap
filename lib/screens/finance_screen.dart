import 'package:flutter/material.dart';

class FinanceScreen extends StatelessWidget {
  const FinanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keuangan'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Keuangan'),
      ),
    );
  }
}
