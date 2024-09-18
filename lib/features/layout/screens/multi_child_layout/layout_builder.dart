import 'package:flutter/material.dart';

class LayoutBuilderLayout extends StatelessWidget {
  const LayoutBuilderLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "LayoutBuilder Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: LayoutBuilder(builder: (context, constraint) {
        // Large screens (tablet on landscape mode, desktop, TV, iPads)
        if(constraint.maxWidth > 600) {
          return Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: constraint.maxWidth * 0.75,
                    color: Colors.amberAccent,
                    child: const Center(
                      child: Text('Header'),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: constraint.maxWidth * 0.75,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text('Main Content'),
                    ),
                  ),
                  Container(
                    height: constraint.maxHeight - 400,
                    width: constraint.maxWidth * 0.75,
                    color: Colors.redAccent,
                    child: const Center(
                      child: Text('Footer'),
                    ),
                  ),
                ],
              ),
              Container(
                width: constraint.maxWidth * 0.25,
                height: constraint.maxHeight,
                color: Colors.pink,
                child: const Center(
                  child: Text('Right Sidebar'),
                ),
              ),
            ],
          );
        }

        // Small screens
        return Column(
          children: [
            Container(
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text('Header'),
              ),
            ),
            Container(
              height: 300,
              color: Colors.amber,
              child: const Center(
                child: Text('Main Content'),
              ),
            ),
            Container(
              height: constraint.maxHeight - 400,
              color: Colors.greenAccent,
              child: const Center(
                child: Text('Footer'),
              ),
            )
          ],
        );
      }),
    );
  }
}
