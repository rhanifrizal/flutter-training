import 'package:flutter/material.dart';

class IntrinsicHeightLayout extends StatelessWidget {
  const IntrinsicHeightLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "IntrinsicHeight Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: IntrinsicHeight(
        // To allow child widget to determine their own height or width
        // required to render its content without overflowing.
        child: Row(
          // Stretch used to make the height of Box and Box1 the same as Box2
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              child: const Text("Box 1"),
            ),
            Container(
              color: Colors.green,
              width: 150,
              child: const Text("Box 2\nwith\nmultiple\nlines"),
            ),
            Container(
              color: Colors.orange,
              width: 75,
              child: const Text('Box'),
            ),
          ],
        ),
      ),
    );
  }
}
