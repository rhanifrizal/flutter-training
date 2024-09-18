import 'package:flutter/material.dart';

class AlignLayout extends StatelessWidget {
  const AlignLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Align Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Container(
          height: 120.0,
          width: 120.0,
          color: Colors.green[50],
          child: const Align(
            alignment: Alignment.bottomLeft,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      )
    );
  }
}
