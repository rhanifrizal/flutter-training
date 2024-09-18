import 'package:flutter/material.dart';

class CenterLayout extends StatelessWidget {
  const CenterLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Center Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const Center(
        child: Text("This is a center text"),
      )
    );
  }
}
