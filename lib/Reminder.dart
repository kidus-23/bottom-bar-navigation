import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminders'),
      ),
      body: const Center(
        child: Icon(
          Icons.access_alarm,
          color: Colors.lime,
          size: 260.0,
        )
      )
    );
  }
}

