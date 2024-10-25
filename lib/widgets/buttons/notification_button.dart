import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.notifications,
        color: Colors.white, // Set the icon color to white
      ),
      onPressed: () {
        // Action for notifications
      },
    );
  }
}
