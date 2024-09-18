import 'package:flutter/material.dart';

class IntrinsicWidthLayout extends StatelessWidget {
  const IntrinsicWidthLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "IntrinsicWidth Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: IntrinsicWidth(
        // To allow child widget to determine their own height or width
        // required to render its content without overflowing.
        child: Column(
          // without CrossAxisAlignment.stretch, the second container wont
          // have the same width as the first container
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.purple,
              child: const Text("This is a really really long text that should wrap to multiple lines"),
            ),
            Container(
              color: Colors.red,
              child: const Text("Short text"),
            ),
          ],
        ),
      ),
    );
  }
}
