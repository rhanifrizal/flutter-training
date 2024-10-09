import 'package:flutter/material.dart';
import 'package:flutter_training/features/passing_state/lifting_state_up/lifting_state_up_parent_screen.dart';
import 'package:flutter_training/features/passing_state/passing_state_down/passing_state_down_parent_screen.dart';

class PassingStateScreen extends StatelessWidget {
  const PassingStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Passing State";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: ListView(
          children: [
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PassingStateDownParentScreen())),
              child: const Text("Passing State Down", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LiftingStateUpParentScreen())),
              child: const Text("Lifting State Up", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
