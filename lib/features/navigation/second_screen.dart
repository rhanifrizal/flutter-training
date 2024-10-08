import 'package:flutter/material.dart';
import 'model/person_model.dart';

class SecondScreen extends StatelessWidget {
  final String? data;
  final Person? person;

  const SecondScreen({super.key, this.data, this.person});

  @override
  Widget build(BuildContext context) {
    const title = "Second Page with Parameter";
    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: Center(
        child: Text(person != null
            ? 'Name: ${person!.name}, Age: ${person!.age}'
            : data ?? 'No Data Passed'),
      ),
    );
  }
}
