import 'package:flutter/material.dart';

class Gratitude extends StatelessWidget {
  const Gratitude({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gratitudes'),
      ),
      body: const Center(
        child: Icon(
          Icons.sentiment_satisfied,
          color: Colors.lightGreen,
          size: 260.0,
        )
      )
    );
  }
}

