import 'package:flutter/material.dart';

class Example9 extends StatelessWidget {
  const Example9({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 9";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(
          color: Colors.red,
          width: 10,
          height: 10,
        ),
      ),
    );
  }
}
