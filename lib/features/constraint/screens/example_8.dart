import 'package:flutter/material.dart';

class Example8 extends StatelessWidget {
  const Example8({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 8";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.red,
          child: Container(
            color: Colors.green,
            width: 30,
            height: 30,
          )
        ),
      ),
    );
  }
}
