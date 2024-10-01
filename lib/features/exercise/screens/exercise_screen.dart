import 'package:flutter/material.dart';
import 'package:flutter_training/features/exercise/screens/scan_id/scan_screen.dart';
import 'package:flutter_training/features/exercise/screens/step3/step3_screen.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Exercises";
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: ListView(
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ScanScreen())),
                child: const Text("Scan ID Screen", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Step3Screen())),
                child: const Text("Step 3 Screen", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










