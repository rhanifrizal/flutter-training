import 'package:flutter/material.dart';

class TransformLayout extends StatelessWidget {
  const TransformLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Transform Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Rotation
            Transform.rotate(
              angle: 0.785, // 45 degrees
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text('Rotation'),
                ),
              ),
            ),
            // Translate (Positioning)
            Transform.translate(
              // Move 50 pixels to the right
              offset: const Offset(50, 0),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text('Translation'),
                ),
              ),
            ),
            // Scaling
            Transform.scale(
              scale: 1.5,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: const Center(
                  child: Text('Scaling'),
                ),
              ),
            ),
            // Skewing
            Transform(
              transform: Matrix4.skew(0.2, 0.0), // Apply horizontal skew
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                child: const Center(
                  child: Text('Skewing'),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
