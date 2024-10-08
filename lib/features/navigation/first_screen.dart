import 'package:flutter/material.dart';

import 'model/person_model.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'First Screen';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the second screen using the named route
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: 'Hello from the Home Page!', // Passing data
                );
              },
              child: const Text('Go to Second Page with String'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second screen using the named route and model
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: Person('John Doe', 28),
                );
              },
              child: const Text('Go to Second Page with Model'),
            ),
          ],
        ),
      ),
    );
  }
}
