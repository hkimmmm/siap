import 'package:flutter/material.dart';
import '../../screens/qr_code_screen.dart'; // Pastikan untuk mengimpor semua halaman yang relevan
import '../../screens/student_card_screen.dart';
import '../../screens/finance_screen.dart';
import '../../screens/krs_screen.dart';
import '../../screens/khs_screen.dart';
import '../../screens/guidance_screen.dart';
import '../../screens/consultation_screen.dart';
import '../../screens/transcript_screen.dart';

final List<Map<String, dynamic>> menuItems = [
  {
    'icon': Icons.qr_code,
    'title': 'Presensi QR Code',
    'page': const QRCodeScreen(), // Halaman yang akan dibuka
  },
  {
    'icon': Icons.card_membership,
    'title': 'Kartu Mahasiswa',
    'page': const StudentCardScreen(),
  },
  {
    'icon': Icons.money,
    'title': 'Keuangan',
    'page': const FinanceScreen(),
  },
  {
    'icon': Icons.assignment,
    'title': 'KRS',
    'page': const KRSScreen(),
  },
  {
    'icon': Icons.history,
    'title': 'KHS',
    'page': const KHSScreen(),
  },
  {
    'icon': Icons.person,
    'title': 'Bimbingan',
    'page': const GuidanceScreen(),
  },
  {
    'icon': Icons.support_agent,
    'title': 'Konsultasi Dosen',
    'page': const ConsultationScreen(),
  },
  {
    'icon': Icons.assignment_turned_in,
    'title': 'Transkrip',
    'page': const TranscriptScreen(),
  },
];
