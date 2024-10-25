import 'package:flutter/material.dart';
import '../buttons/menu_card.dart';
import '../buttons/menu_data.dart';

class MyAcademicMenu extends StatelessWidget {
  const MyAcademicMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'MyAcademic',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.8,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          padding: const EdgeInsets.all(15),
          itemCount: menuItems.length,
          physics:
              const NeverScrollableScrollPhysics(),
          shrinkWrap: true, 
          itemBuilder: (context, index) {
            return MenuCard(
              icon: menuItems[index]['icon'],
              title: menuItems[index]['title'],
              page: menuItems[index]['page'],
            );
          },
        ),
      ],
    );
  }
}
