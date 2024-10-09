import 'package:flutter/material.dart';

class PassingStateDownChildScreen extends StatelessWidget {
  final int counter;

  const PassingStateDownChildScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Counter: $counter',
      style: const TextStyle(fontSize: 24),
    );
  }
}