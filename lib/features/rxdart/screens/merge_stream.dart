import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class MergeStreamScreen extends StatefulWidget {
  const MergeStreamScreen({super.key});

  @override
  State<MergeStreamScreen> createState() => _MergeStreamScreenState();
}

class _MergeStreamScreenState extends State<MergeStreamScreen> {
  @override
  void initState() {
    super.initState();

    // MergeStream
    // Create two Streams and merge them using the MergeStream class which
    // results in a single Stream that merges the events from both input Streams.

    final myFirstStream = Stream.fromIterable([1, 2, 3]);
    final mySecondStream = Stream.fromIterable([4, 5, 6]);

    final mergedStream = MergeStream([myFirstStream, mySecondStream]);

    mergedStream.listen(print);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
