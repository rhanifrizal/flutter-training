import 'package:flutter/material.dart';

// First child widget (only displays the state)
class LiftingStateUpChildren1Screen extends StatelessWidget {
  final int counter;

  const LiftingStateUpChildren1Screen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Counter: $counter',
      style: const TextStyle(fontSize: 24),
    );
  }
}