import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class BehaviorSubjectScreen extends StatefulWidget {
  const BehaviorSubjectScreen({super.key});

  @override
  State<BehaviorSubjectScreen> createState() => _BehaviorSubjectScreenState();
}

class _BehaviorSubjectScreenState extends State<BehaviorSubjectScreen> {
  // BehaviorSubject is a type of StreamController that caches the latest added
  // value or error. So, when a new listener subscribes to the Stream, the
  // latest value or error will be emitted to the listener. This can be extremely
  // useful in scenarios where you want to share a single value (or its latest
  // status) with multiple components in your Flutter application.

  // BehaviorSubject in a Flutter application can be use to manage state reactively:

  // Create a BehaviorSubject to manage the state of the counter
  final BehaviorSubject<int> _counterSubject = BehaviorSubject<int>.seeded(0);

  // Increment the counter and add the new value to the subject
  void _incrementCounter() {
    int currentValue = _counterSubject.value; // Get the current value
    _counterSubject.sink.add(currentValue + 1); // Add the new value
  }

  @override
  void dispose() {
    _counterSubject.close(); // Close the subject when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String title = "Behavior Subject";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        // Use a StreamBuilder to listen to the BehaviorSubject stream
        child: StreamBuilder<int>(
          stream: _counterSubject.stream,
          builder: (context, snapshot) {
            return Text(
              'Counter: ${snapshot.data}', // Display the current value
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
