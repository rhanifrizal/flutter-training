import 'package:flutter/material.dart';

class Example15 extends StatelessWidget {
  const Example15({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 15";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: OverflowBox(
        minWidth: 0,
        minHeight: 0,
        maxWidth: double.infinity,
        maxHeight: double.infinity,
        child: Container(
          color: Colors.red,
          width: 4000,
          height: 50,
        ),
      ),
    );
  }
}
