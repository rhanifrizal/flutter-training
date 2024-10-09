import 'package:flutter/material.dart';
import 'package:flutter_training/features/passing_state/passing_state_down/passing_state_down_child_screen.dart';

class PassingStateDownParentScreen extends StatefulWidget {
  const PassingStateDownParentScreen({super.key});

  @override
  State<PassingStateDownParentScreen> createState() => _PassingStateDownParentScreenState();
}

class _PassingStateDownParentScreenState extends State<PassingStateDownParentScreen> {
  int _counter = 0;

  // Function to increment counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const title = "Passing State Down";
    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: Center(
        // Passing state to child widget.
        // The state is managed at the top level, and the child widgets only
        // reflect the state they receive. Basically, it is only used to show
        // only.
        child: PassingStateDownChildScreen(counter: _counter),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Incrementing counter
        child: const Icon(Icons.add),
      ),
    );
  }
}
