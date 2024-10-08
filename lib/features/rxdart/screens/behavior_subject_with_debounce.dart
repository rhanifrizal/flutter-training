import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class BehaviorSubjectWithDebounce extends StatefulWidget {
  const BehaviorSubjectWithDebounce({super.key});

  @override
  State<BehaviorSubjectWithDebounce> createState() => _BehaviorSubjectWithDebounceState();
}

class _BehaviorSubjectWithDebounceState extends State<BehaviorSubjectWithDebounce> {
  // RxDart is used to debounce user input (e.g., to prevent calling an API too frequently):
  final TextEditingController _searchController = TextEditingController();
  final BehaviorSubject<String> _searchSubject = BehaviorSubject<String>();

  @override
  void initState() {
    super.initState();
    // Use debounce to delay API calls or other actions based on user input
    _searchSubject
        .debounceTime(const Duration(milliseconds: 500))
        .listen((searchText) {
      // Simulate an API call or action with the search term
      print("Searching for: $searchText");
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchSubject.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String title = "Behavior Subject with Debounce";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search here...',
              ),
              onChanged: (value) {
                // Add the input to the search subject
                _searchSubject.add(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
