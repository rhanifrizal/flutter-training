import 'package:flutter/material.dart';

class Example12 extends StatelessWidget {
  const Example12({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 12";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 70,
            minHeight: 70,
            maxWidth: 150,
            maxHeight: 150,
          ),
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
