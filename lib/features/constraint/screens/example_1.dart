import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 1";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
