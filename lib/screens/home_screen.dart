import 'package:flutter/material.dart';
import 'package:siap/widgets/app/my_academic_menu.dart';
import '../widgets/app/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(), // Gunakan CustomAppBar
            MyAcademicMenu(), // MyAcademicMenu di bawah CustomAppBar
          ],
        ),
      ),
    );
  }
}
