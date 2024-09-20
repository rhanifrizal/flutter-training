import 'package:flutter/material.dart';

class Example6 extends StatelessWidget {
  const Example6({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 6";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
