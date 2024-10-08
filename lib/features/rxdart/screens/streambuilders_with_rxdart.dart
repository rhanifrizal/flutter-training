import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class StreamBuildersWithRxdart extends StatelessWidget {
  const StreamBuildersWithRxdart({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "StreamBuilder with RxDart";
    final BehaviorSubject<String> _subject = BehaviorSubject<String>.seeded('Hello, RxDart!');
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        // StreamBuilder is implemented to listens to the _subject stream.
        // Whenever a data is added to the stream, it will automatically builds
        // the widget.
        child: StreamBuilder<String>(
          stream: _subject.stream,
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              return Text(
                snapshot.data!,
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
