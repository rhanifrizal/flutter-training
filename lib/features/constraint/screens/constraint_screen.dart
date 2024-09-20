import 'package:flutter/material.dart';
import 'package:flutter_training/features/constraint/screens/example_1.dart';
import 'package:flutter_training/features/constraint/screens/example_10.dart';
import 'package:flutter_training/features/constraint/screens/example_11.dart';
import 'package:flutter_training/features/constraint/screens/example_12.dart';
import 'package:flutter_training/features/constraint/screens/example_13.dart';
import 'package:flutter_training/features/constraint/screens/example_14.dart';
import 'package:flutter_training/features/constraint/screens/example_15.dart';
import 'package:flutter_training/features/constraint/screens/example_16.dart';
import 'package:flutter_training/features/constraint/screens/example_17.dart';
import 'package:flutter_training/features/constraint/screens/example_18.dart';
import 'package:flutter_training/features/constraint/screens/example_19.dart';
import 'package:flutter_training/features/constraint/screens/example_2.dart';
import 'package:flutter_training/features/constraint/screens/example_20.dart';
import 'package:flutter_training/features/constraint/screens/example_21.dart';
import 'package:flutter_training/features/constraint/screens/example_22.dart';
import 'package:flutter_training/features/constraint/screens/example_23.dart';
import 'package:flutter_training/features/constraint/screens/example_24.dart';
import 'package:flutter_training/features/constraint/screens/example_25.dart';
import 'package:flutter_training/features/constraint/screens/example_26.dart';
import 'package:flutter_training/features/constraint/screens/example_27.dart';
import 'package:flutter_training/features/constraint/screens/example_28.dart';
import 'package:flutter_training/features/constraint/screens/example_29.dart';
import 'package:flutter_training/features/constraint/screens/example_3.dart';
import 'package:flutter_training/features/constraint/screens/example_4.dart';
import 'package:flutter_training/features/constraint/screens/example_5.dart';
import 'package:flutter_training/features/constraint/screens/example_6.dart';
import 'package:flutter_training/features/constraint/screens/example_7.dart';
import 'package:flutter_training/features/constraint/screens/example_8.dart';
import 'package:flutter_training/features/constraint/screens/example_9.dart';

class ConstraintScreen extends StatelessWidget {
  const ConstraintScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Constraint";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: ListView(
          children: [
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example1())),
              child: const Text("Example 1 - Container", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example2())),
              child: const Text("Example 2 - Container With Height and Width", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example3())),
              child: const Text("Example 3 - Center, Container with Height and Width", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example4())),
              child: const Text("Example 4 - Align", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example5())),
              child: const Text("Example 5 - Center With double.infinity", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example6())),
              child: const Text("Example 6 - Center, Container", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example7())),
              child: const Text("Example 7 - Center, Green & Red Container", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example8())),
              child: const Text("Example 8 - Center, Green & Red Container with Padding", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example9())),
              child: const Text("Example 9 - ConstrainedBox", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example10())),
              child: const Text("Example 10 - ConstrainedBox with Center", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example11())),
              child: const Text("Example 11 - ConstrainedBox with Center + Bigger Height and Width", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 5),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example12())),
              child: const Text("Example 12 - ConstrainedBox with Center, within the constraints", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example13())),
              child: const Text("Example 13 - UnconstrainedBox", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example14())),
              child: const Text("Example 14 - UnconstrainedBox with width bigger than screen", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example15())),
              child: const Text("Example 15 - OverflowBox with double.infinity", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example16())),
              child: const Text("Example 16 - UnconstrainedBox with double.infinity", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example17())),
              child: const Text("Example 17 - UnconstrainedBox with LimitedBox", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example18())),
              child: const Text("Example 18 - FittedBox", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example19())),
              child: const Text("Example 19 - FittedBox with Center", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example20())),
              child: const Text("Example 20 - FittedBox with Center and long text", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example21())),
              child: const Text("Example 21 - Center with long text", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example22())),
              child: const Text("Example 22 - FittedBox and Container with double.infinity width", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example23())),
              child: const Text("Example 23 - Row and Container with Text", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example24())),
              child: const Text("Example 24 - Row with long text", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example25())),
              child: const Text("Example 25 - Row with Expanded for Text", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example26())),
              child: const Text("Example 26 - Row with Expanded for Text", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example27())),
              child: const Text("Example 27 - Row with Flexible for Text", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example28())),
              child: const Text("Example 28 - Container with Column", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Example29())),
              child: const Text("Example 29 - SizedBox.expand with Container and Column", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
