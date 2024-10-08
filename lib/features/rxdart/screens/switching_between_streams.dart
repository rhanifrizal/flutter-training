import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class SwitchingBetweenStreams extends StatefulWidget {
  const SwitchingBetweenStreams({super.key});

  @override
  State<SwitchingBetweenStreams> createState() => _SwitchingBetweenStreamsState();
}

class _SwitchingBetweenStreamsState extends State<SwitchingBetweenStreams> {
  @override
  void initState() {
    super.initState();

    // This will takes a Stream of Streams (high-order Stream) as input and
    // always emits values from the most recently provided Stream.

    final triggerSwitch = PublishSubject<int>();
    final firstStream = Rx.timer('A', const Duration(seconds: 3));
    final secondStream = Rx.timer('B', const Duration(seconds: 1));

    triggerSwitch
      .switchMap((value) => value == 1 ? firstStream : secondStream)
      .listen(print); // If switch is triggered before 3 seconds, it will print B

    triggerSwitch.add(1);

    // After 2 seconds, trigger to switch to the faster stream
    Future.delayed(const Duration(seconds: 2), () => triggerSwitch.add(2));

    // One of the strong suits of RxDart that Flutter developers can capitalize
    // on is these advanced functionalities which can help in handling complex
    // flutter apps elegantly and effectively
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
