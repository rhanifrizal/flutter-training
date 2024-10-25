import 'package:flutter/material.dart';

class TextformfieldControllerValidationListenerScreen extends StatefulWidget {
  const TextformfieldControllerValidationListenerScreen({super.key});

  @override
  State<TextformfieldControllerValidationListenerScreen> createState() =>
      _TextformfieldControllerValidationListenerScreenState();
}

class _TextformfieldControllerValidationListenerScreenState
    extends State<TextformfieldControllerValidationListenerScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      debugPrint('Name field updated: ${_nameController.text}');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const title = "TextFormField, Controller, Validation, Listener";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter you name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()) {
                      debugPrint('Form is valid. Name: ${_nameController.text}');
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
