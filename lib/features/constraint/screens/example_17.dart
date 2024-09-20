import 'package:flutter/material.dart';

class Example17 extends StatelessWidget {
  const Example17({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 17";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: UnconstrainedBox(
        child: LimitedBox(
          maxWidth: 100,
          child: Container(
            color: Colors.red,
            width: double.infinity,
            height: 100,
          ),
        ),
      ),
    );
  }
}
