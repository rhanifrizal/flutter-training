import 'package:flutter/material.dart';

class SizedBoxLayout extends StatelessWidget {
  const SizedBoxLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "SizedBox Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Button")
          ),
        ),
      ),
    );
  }
}
