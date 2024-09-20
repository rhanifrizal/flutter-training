import 'package:flutter/material.dart';

class Example24 extends StatelessWidget {
  const Example24({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 24";
    return Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Row(
          children: [
            Container(
              color: Colors.red,
              child: const Text(
                  'This is a very long text that '
                  'wont\'t fit the line.',
                  style: TextStyle(fontSize: 30)),
            ),
            Container(
              color: Colors.green,
              child: const Text("Goodbye!", style: TextStyle(fontSize: 30)),
            )
          ],
        ));
  }
}
