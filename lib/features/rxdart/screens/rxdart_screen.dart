import 'package:flutter/material.dart';
import 'package:flutter_training/features/rxdart/screens/behavior_subject_screen.dart';
import 'package:flutter_training/features/rxdart/screens/behavior_subject_with_debounce.dart';
import 'package:flutter_training/features/rxdart/screens/combining_stream.dart';
import 'package:flutter_training/features/rxdart/screens/merge_stream.dart';
import 'package:flutter_training/features/rxdart/screens/observer_screen.dart';
import 'package:flutter_training/features/rxdart/screens/real_world_example.dart';
import 'package:flutter_training/features/rxdart/screens/rxdart_extension_buffer.dart';
import 'package:flutter_training/features/rxdart/screens/streambuilders_with_rxdart.dart';
import 'package:flutter_training/features/rxdart/screens/switching_between_streams.dart';

class RxdartScreen extends StatelessWidget {
  const RxdartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "RxDart";
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: ListView(
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const BehaviorSubjectScreen())),
                child: const Text("Behavior Subject", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const BehaviorSubjectWithDebounce())),
                child: const Text("Behavior Subject with Debounce", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ObserverScreen())),
                child: const Text("Observer Screen", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MergeStreamScreen())),
                child: const Text("Merge Streams", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const RxdartExtensionBuffer())),
                child: const Text("RxDart Extension (Buffer)", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const StreamBuildersWithRxdart())),
                child: const Text("StreamBuilder with RxDart", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CombiningStream())),
                child: const Text("Combine Stream", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SwitchingBetweenStreams())),
                child: const Text("Switching Between Streams", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const RealWorldExample())),
                child: const Text("Real World Example", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










