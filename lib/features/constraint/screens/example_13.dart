import 'package:flutter/material.dart';

class Example13 extends StatelessWidget {
  const Example13({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 13";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: UnconstrainedBox(
        child: Container(
          color: Colors.red,
          width: 20,
          height: 50,
        ),
      ),
    );
  }
}
