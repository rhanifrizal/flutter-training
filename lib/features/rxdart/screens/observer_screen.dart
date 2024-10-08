import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ObserverScreen extends StatefulWidget {
  const ObserverScreen({super.key});

  @override
  State<ObserverScreen> createState() => _ObserverScreenState();
}

class _ObserverScreenState extends State<ObserverScreen> {

  @override
  void initState() {
    super.initState();

    // We create a BehaviorSubject that deals with integers.
    // We listens to the stream of data and print whatever data is added into
    // BehaviorSubject.

    final subject = BehaviorSubject<int>();

    // Observer
    subject.stream.listen(print);

    // Producer
    subject.sink.add(1);
    subject.sink.add(2);
    subject.sink.add(3);
    subject.close();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
