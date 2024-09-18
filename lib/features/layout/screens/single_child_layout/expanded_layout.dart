import 'package:flutter/material.dart';

class ExpandedLayout extends StatelessWidget {
  const ExpandedLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Expanded Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
            Expanded(
              // With multiple expanded, you can use 'flex' to specify the ratio
              // for each of the expanded widget
              child: Container(
                color: Colors.yellow,
                width: 100,
              )
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
          ],
        ),
      )
    );
  }
}
