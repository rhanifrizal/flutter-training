import 'package:flutter/material.dart';

class LimitedBoxLayout extends StatelessWidget {
  const LimitedBoxLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "LimitedBox Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView(
        children: [
          // To limit the maximum height and width of its child widget
          // Usually used within ListView or Column as they can have unlimited height
          // Only work when it's size is unconstrained
          LimitedBox(
            maxHeight: 300,
            maxWidth: 10,
            child: Container(
              width: 10,
              color: Colors.blue,
            ),
          ),
          LimitedBox(
            maxHeight: 200,
            child: Container(
              color: Colors.red,
            ),
          ),
          LimitedBox(
            maxHeight: 100,
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      )
    );
  }
}
