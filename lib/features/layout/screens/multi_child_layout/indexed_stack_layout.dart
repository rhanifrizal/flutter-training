import 'package:flutter/material.dart';

class IndexedStackLayout extends StatefulWidget {
  const IndexedStackLayout({super.key});
  @override
  State<IndexedStackLayout> createState() => _IndexedStackLayoutState();
}

class _IndexedStackLayoutState extends State<IndexedStackLayout> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    const String title = "IndexedStack Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0; // Show the first child
                  });
                },
                child: const Text('Stack 1'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1; // Show the second child
                  });
                },
                child: const Text('Stack 2'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          IndexedStack(
            index: currentIndex,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ],
          )
        ],
      )
    );
  }
}
