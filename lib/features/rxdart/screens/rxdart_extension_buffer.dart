import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class RxdartExtensionBuffer extends StatefulWidget {
  const RxdartExtensionBuffer({super.key});

  @override
  State<RxdartExtensionBuffer> createState() => _RxdartExtensionBufferState();
}

class _RxdartExtensionBufferState extends State<RxdartExtensionBuffer> {
  @override
  void initState() {
    super.initState();

    // RxDart Extension such as buffering events can change it into a new Stream
    // with enhanced capabilities.
    // Example here is a Stream with a buffer of integers to groups of two
    // bufferCount() is an extension method provided by RXDart that buffers a
    // Stream into a specified count.
    // In this case, it will prints [1, 2], [3, 4], [5]

    Stream.fromIterable([1, 2, 3, 4, 5])
      .bufferCount(2)
      .listen(print);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
