import 'package:flutter/material.dart';

class Example27 extends StatelessWidget {
  const Example27({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Example 27";
    return Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Row(
          children: [
            Flexible(
              child: Center(
                child: Container(
                  color: Colors.red,
                  child: const Text(
                    'This is a very long text that '
                        'wont\'t fit the line.',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.green,
                child: const Text("Goodbye!", style: TextStyle(fontSize: 30)),
              ),
            )
          ],
        )
    );
  }
}
