import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:collection/collection.dart';

class RealWorldExample extends StatefulWidget {
  const RealWorldExample({super.key});

  @override
  State<RealWorldExample> createState() => _RealWorldExampleState();
}

class _RealWorldExampleState extends State<RealWorldExample> {
  static const konamiKeyCodes = <int>[
    38, // UP
    40, // DOWN
    37, // LEFT
    39, // RIGHT
    66, // B
    65, // A
  ];

  final _keyPressStreamController = BehaviorSubject<int>();

  @override
  void initState() {
    super.initState();

    // Listen for key presses
    // _keyPressStreamController
    //   .bufferCount(10, 1)
    //   .where((lastTenKeyCodes) =>
    //     const IterableEquality<int>()
    //       .equals(lastTenKeyCodes, konamiKeyCodes))
    //   .listen((_) {
    //     _showKonamiMessage();
    //   });

    _keyPressStreamController
      .bufferCount(10, 1)
      .where((lastTenKeyCodes) {
        final isKonami = const IterableEquality().equals(lastTenKeyCodes, konamiKeyCodes);
        if(isKonami) {
          print("Konami Code Detected!");
        }
        return isKonami;
      })
      .listen((_) {
        _showKonamiMessage();
      });
  }

  void _showKonamiMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success!'),
          content: const Text('KONAMI CODE ENTERED!'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ]
        );
      }
    );
  }

  void _onKeyEvent(int keyCode) {
    _keyPressStreamController.add(keyCode);
  }

  @override
  void dispose() {
    _keyPressStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const title = "Konami Code Detector";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Simulate a random key press for testing
            // Replace this with actual gestures or buttons if needed
            // For demonstration, you can invoke _onKeyEvent with the
            // corresponding key codes
            _onKeyEvent(38); // Simulate UP key for testing
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blueAccent,
            child: const Text(
              'Tap here to simulate UP key! (for testing)',
            ),
          ),
        ),
      ),
    );
  }
}
