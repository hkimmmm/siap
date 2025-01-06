import 'package:flutter/material.dart';
import 'package:siap/widgets/app/my_academic_menu.dart';
import '../widgets/app/custom_app_bar.dart';
import '../widgets/app/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Track the current index of the BottomNavigationBar
  int currentIndex = 0;

  // Handle the tap event and update the current index
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(), // CustomAppBar
            const MyAcademicMenu(),
            // Pass currentIndex and onTap to AppBottomNavigationBar
            AppBottomNavigationBar(
              currentIndex: currentIndex,
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
