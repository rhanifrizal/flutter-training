import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 2";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
    );
  }
}
