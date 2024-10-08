import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class CombiningStream extends StatefulWidget {
  const CombiningStream({super.key});

  @override
  State<CombiningStream> createState() => _CombiningStreamState();
}

class _CombiningStreamState extends State<CombiningStream> {
  @override
  void initState() {
    super.initState();
    // In RxDart, you can combine multiple streams into one stream that will
    // emit all values from every given stream in order of subscription.

    final firstStream = Stream.fromIterable([1, 2]);
    final secondStream = Stream.fromIterable(['A', 'B']);

    Rx.combineLatest2(firstStream, secondStream, (a, b) => '$a $b')
      .listen(print);

    // This will prints '1 A', '2 B'
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
