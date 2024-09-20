import 'package:flutter/material.dart';

class Example23 extends StatelessWidget {
  const Example23({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 23";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.red,
            child: const Text('Hello!', style: TextStyle(fontSize: 30)),
          ),
          Container(
            color: Colors.green,
            child: const Text('Goodbye!', style: TextStyle(fontSize: 30)),
          )
        ],
      )
    );
  }
}
