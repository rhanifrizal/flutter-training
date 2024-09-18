import 'package:flutter/material.dart';

class ContainerLayout extends StatelessWidget {
  const ContainerLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Container Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        color: Colors.red[600],
        width: 48,
        height: 48,
      ),
    );
  }
}
