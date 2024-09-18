import 'package:flutter/material.dart';

class PaddingLayout extends StatelessWidget {
  const PaddingLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Padding Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
