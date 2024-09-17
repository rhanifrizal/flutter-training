import 'package:flutter/material.dart';

class BaselineLayout extends StatelessWidget {
  const BaselineLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Baseline Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.teal,
          child: Baseline(
            baseline: 0,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          ),
        ),
      )
    );
  }
}
