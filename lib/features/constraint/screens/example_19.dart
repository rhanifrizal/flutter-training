import 'package:flutter/material.dart';

class Example19 extends StatelessWidget {
  const Example19({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 19";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const Center(
        child: FittedBox(
          child: Text("SOME EXAMPLE TEXT."),
        ),
      ),
    );
  }
}
