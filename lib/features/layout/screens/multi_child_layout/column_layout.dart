import 'package:flutter/material.dart';

class ColumnLayout extends StatelessWidget {
  const ColumnLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Column Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),
          Container(
            height: 300,
            color: Colors.yellow,
          )
        ],
      )
    );
  }
}
