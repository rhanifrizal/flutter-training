import 'package:flutter/material.dart';

class OffstageLayout extends StatefulWidget {
  const OffstageLayout({super.key});
  @override
  State<OffstageLayout> createState() => _OffstageLayoutState();
}

class _OffstageLayoutState extends State<OffstageLayout> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    const String title = "Offstage Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Used to hide or show any widget programmatically
            Offstage(
              offstage: isHidden,
              child: const FlutterLogo(size: 75),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isHidden = !isHidden;
                });
              },
              child: Text(isHidden ? 'Show' : 'Hide'),
            ),
          ],
        ),
      )
    );
  }
}
