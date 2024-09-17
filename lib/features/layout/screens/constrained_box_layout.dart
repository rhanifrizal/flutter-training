import 'package:flutter/material.dart';

class ConstrainedBoxLayout extends StatelessWidget {
  const ConstrainedBoxLayout({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Baseline Layout";
    return Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 200,
                ),
                child: const Text(
                  'This is a constrained box',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                )
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 50,
                  minWidth: 200,
                ),
                child: ElevatedButton(
                  child: const Text("Tap Me!"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        )
    );
  }
}
