import 'package:flutter/material.dart';

class Birthday extends StatelessWidget {
  const Birthday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Birthdays'),
      ),
      body: const Center(
        child: Icon(
          Icons.cake,
          color: Colors.deepPurple,
          size: 260.0,
        )
      )
    );
  }
}
