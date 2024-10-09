import 'package:flutter/material.dart';

class LiftingStateUpChildren2Screen extends StatelessWidget {
  final VoidCallback increment;
  final VoidCallback decrement;

  const LiftingStateUpChildren2Screen(
      {super.key, required this.increment, required this.decrement});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: decrement,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: increment,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
