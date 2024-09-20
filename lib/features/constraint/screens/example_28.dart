import 'package:flutter/material.dart';

class Example28 extends StatelessWidget {
  const Example28({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 28";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Container(
        color: Colors.blue,
        child: const Column(
          children: [
            Text('Hello'),
            Text('Goodbye!'),
          ],
        )
      ),
    );
  }
}
