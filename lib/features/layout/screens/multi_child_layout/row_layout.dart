import 'package:flutter/material.dart';

class RowLayout extends StatelessWidget {
  const RowLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Row Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const Row(
        children: [
          FlutterLogo(size: 50),
          // Without expanded/flexible, it will overflow
          Expanded(
            child: Text("Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android"),
          ),
          Icon(Icons.sentiment_very_satisfied, size: 50),
        ],
      ),
    );
  }
}
