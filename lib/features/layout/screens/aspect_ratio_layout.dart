import 'package:flutter/material.dart';

class AspectRatioLayout extends StatelessWidget {
  const AspectRatioLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Aspect Ratio Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            width: double.infinity,
            height: 100.0,
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                color: Colors.green,
              )
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            color: Colors.blue,
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: AspectRatio(
              aspectRatio: 2.0,
              child: Container(
                width: 100,
                height: 50,
                color: Colors.green,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            color: Colors.blue,
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: AspectRatio(
              aspectRatio: 1/2,
              child: Container(
                width: 100,
                height: 50,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}
