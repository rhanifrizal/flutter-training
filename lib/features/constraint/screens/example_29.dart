import 'package:flutter/material.dart';

class Example29 extends StatelessWidget {
  const Example29({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 29";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: SizedBox.expand(
        child: Container(
          color: Colors.blue,
          child: const Column(
            children: [
              Text('Hello'),
              Text('Goodbye!'),
            ],
          )
        ),
      ),
    );
  }
}
