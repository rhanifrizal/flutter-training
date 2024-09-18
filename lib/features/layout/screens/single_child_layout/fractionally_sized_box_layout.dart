import 'package:flutter/material.dart';

class FractionallySizedBoxLayout extends StatelessWidget {
  const FractionallySizedBoxLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "FractionallySizedBox Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: SizedBox.expand(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          alignment: FractionalOffset.center,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
