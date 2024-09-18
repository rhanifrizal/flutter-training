import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  const StackLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Stack Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Stack(
          // Clip.none allows the child widget to overflow
          // Clip.hardEdge will clip the child widget
          clipBehavior: Clip.none,
          children: [
            // The first widget in a stack will be the first rendered
            // So it will be at the bottom of other widgets
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.blue,
            ),
            Container(
              width: 160,
              height: 160,
              color: Colors.red,
            ),
            // Positioned children are placed relative to the stack according
            // to their top, bottom, left and right properties
            Positioned(
              top: -50,
              left: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
