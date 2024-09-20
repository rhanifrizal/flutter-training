import 'package:flutter/material.dart';

class Example22 extends StatelessWidget {
  const Example22({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 22";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: FittedBox(
        child: Container(
          height: 20,
          width: double.infinity,
          color: Colors.red,
        ),
      ),
    );
  }
}
