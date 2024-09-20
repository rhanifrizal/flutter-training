import 'package:flutter/material.dart';

class WrapLayout extends StatelessWidget {
  const WrapLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Wrap Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          // Spacing: for a gap between adjacent chips
          spacing: 8.0,
          // runSpacing: for a gap between lines
          runSpacing: 0.0,
          alignment: WrapAlignment.end,
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
              ),
              label: const Text('Hamilton'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
              ),
              label: const Text('Lafayette'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
              ),
              label: const Text('Mulligan'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
              ),
              label: const Text('Laurens'),
            ),
          ],
        ),
      ),
    );
  }
}
