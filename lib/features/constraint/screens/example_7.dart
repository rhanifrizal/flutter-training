import 'package:flutter/material.dart';

class Example7 extends StatelessWidget {
  const Example7({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 7";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Container(
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
