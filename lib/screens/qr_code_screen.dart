import 'package:flutter/material.dart';

class QRCodeScreen extends StatelessWidget {
  const QRCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Presensi QR Code'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Presensi QR Code'),
      ),
    );
  }
}
