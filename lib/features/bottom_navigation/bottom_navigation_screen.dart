import 'package:flutter/material.dart';
import 'package:flutter_training/features/bottom_navigation/bottom_navigation_widget.dart';
import 'package:flutter_training/features/bottom_navigation/bottom_sheet_widget.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Bottom Navigation vs Bottom Sheet";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const BottomNavigationWidget())),
              child: const Text("Bottom Navigation", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const BottomSheetWidget())),
              child: const Text("Bottom Sheet", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      )
    );
  }
}
