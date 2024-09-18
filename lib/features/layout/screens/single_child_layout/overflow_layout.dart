import 'package:flutter/material.dart';

class OverflowLayout extends StatelessWidget {
  const OverflowLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Overflow Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Cover Me"),
            Container(
              width: 100,
              height: 100,
              color: Colors.greenAccent,
              child: const OverflowBox(
                // To allow the child to overflow the parent
                // Without OverflowBox, the child widget will be constrained and
                // would not overflow the parent container (100x100)
                // With OverflowBox maxWidth and maxHeight of 200, it allows the
                // child to overflow the parent container
                maxWidth: 200,
                maxHeight: 200,
                child: FlutterLogo(size: 200),
              ),
            )
          ],
        ),
      )
    );
  }
}
