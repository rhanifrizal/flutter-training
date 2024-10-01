import 'package:flutter/material.dart';
import 'package:flutter_training/features/constraint/screens/constraint_screen.dart';
import 'package:flutter_training/features/exercise/screens/exercise_screen.dart';
import 'package:flutter_training/features/layout/screens/layout_screen.dart';
import 'package:flutter_training/features/media_query/screens/media_query.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Flutter Training App";
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
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LayoutScreen())),
                child: const Text("Layouts", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ConstraintScreen())),
                child: const Text("Constraints", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const KMediaQuery())),
                child: const Text("MediaQuery", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ExerciseScreen())),
                child: const Text("Exercises", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










