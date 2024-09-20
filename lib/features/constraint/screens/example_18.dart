import 'package:flutter/material.dart';

class Example18 extends StatelessWidget {
  const Example18({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 18";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const FittedBox(
        child: Text("SOME EXAMPLE TEXT."),
      ),
    );
  }
}
