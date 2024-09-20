import 'package:flutter/material.dart';

class Example16 extends StatelessWidget {
  const Example16({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 16";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: UnconstrainedBox(
        child: Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
        ),
      ),
    );
  }
}
