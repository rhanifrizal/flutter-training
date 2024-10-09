import 'package:flutter/material.dart';
import 'package:flutter_training/features/passing_state/lifting_state_up/lifting_state_up_children_1_screen.dart';
import 'package:flutter_training/features/passing_state/lifting_state_up/lifting_state_up_children_2_screen.dart';

class LiftingStateUpParentScreen extends StatefulWidget {
  const LiftingStateUpParentScreen({super.key});

  @override
  State<LiftingStateUpParentScreen> createState() => _LiftingStateUpParentScreenState();
}

class _LiftingStateUpParentScreenState extends State<LiftingStateUpParentScreen> {
  int _counter = 0;

  // Function to increment counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Function to decrement counter
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    const title = "Lifting State Up";
    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Passing state and callback to child widgets
          LiftingStateUpChildren1Screen(counter: _counter),
          const SizedBox(height: 20),
          LiftingStateUpChildren2Screen(
            increment: _incrementCounter,
            decrement: _decrementCounter,
          ),
        ],
      ),
    );
  }
}
