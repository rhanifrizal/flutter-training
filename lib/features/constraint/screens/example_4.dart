import 'package:flutter/material.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 4";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
