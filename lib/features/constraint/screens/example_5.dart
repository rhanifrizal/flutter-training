import 'package:flutter/material.dart';

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 5";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
