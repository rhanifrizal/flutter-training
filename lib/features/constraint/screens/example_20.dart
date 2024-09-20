import 'package:flutter/material.dart';

class Example20 extends StatelessWidget {
  const Example20({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 20";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const Center(
        child: FittedBox(
          child: Text("This is some very very very large text that is too big to fit a regular screen in a single line."),
        ),
      ),
    );
  }
}
