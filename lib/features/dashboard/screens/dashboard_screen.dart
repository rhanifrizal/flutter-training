import 'package:flutter/material.dart';
import 'package:flutter_training/features/bottom_navigation/bottom_navigation_screen.dart';
import 'package:flutter_training/features/clean_code/clean_code_screen.dart';
import 'package:flutter_training/features/constraint/screens/constraint_screen.dart';
import 'package:flutter_training/features/exercise/screens/exercise_screen.dart';
import 'package:flutter_training/features/import_assets/import_screen.dart';
import 'package:flutter_training/features/layout/screens/layout_screen.dart';
import 'package:flutter_training/features/localisation/localisation_screen.dart';
import 'package:flutter_training/features/media_query/screens/media_query.dart';
import 'package:flutter_training/features/navigation/first_screen.dart';
import 'package:flutter_training/features/null_safety/null_safety_screen.dart';
import 'package:flutter_training/features/passing_state/passing_state_screen.dart';
import 'package:flutter_training/features/rxdart/screens/rxdart_screen.dart';

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
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CleanCodeScreen())),
                child: const Text("Clean Code Practice", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const RxdartScreen())),
                child: const Text("RxDart", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FirstScreen())),
                child: const Text("Navigation", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PassingStateScreen())),
                child: const Text("Passing State", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LocalisationScreen())),
                child: const Text("Localisation", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ImportScreen())),
                child: const Text("Import SVGs, Fonts, and Images", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const NullSafetyScreen())),
                child: const Text("Null Safety", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const BottomNavigationScreen())),
                child: const Text("Bottom Navigation vs Bottom Sheet", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










