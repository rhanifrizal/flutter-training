import 'package:flutter/material.dart';
import 'package:flutter_training/features/layout/screens/aspect_ratio_layout.dart';
import 'package:flutter_training/features/layout/screens/baseline_layout.dart';
import 'package:flutter_training/features/layout/screens/center_layout.dart';
import 'package:flutter_training/features/layout/screens/align_layout.dart';
import 'package:flutter_training/features/layout/screens/constrained_box_layout.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Layouts";
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
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CenterLayout())),
              child: const Text("Center", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AlignLayout())),
              child: const Text("Align", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AspectRatioLayout())),
              child: const Text("Aspect Ratio", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const BaselineLayout())),
              child: const Text("Baseline", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ConstrainedBoxLayout())),
              child: const Text("ConstrainedBox", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
