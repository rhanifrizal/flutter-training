import 'package:flutter/material.dart';

class Example14 extends StatelessWidget {
  const Example14({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 14";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: UnconstrainedBox(
        child: Container(
          color: Colors.red,
          width: 4000,
          height: 50,
        ),
      ),
    );
  }
}
