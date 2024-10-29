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
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      debugPrint('Name field updated: ${_nameController.text}');
    });
    _emailController.addListener(() {
      debugPrint('Email field updated: ${_emailController.text}');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
  }

  RegExp get _emailRegex => RegExp(r'^\S+@\S+$');

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
            /// AutovalidateMode.always: Trigger validation as soon as the form becomes visible
            /// AutovalidateMode.onUserInteraction: Trigger validation as soon as one of the form value has been changed
            /// AutovalidateMode.disabled: To disable validation on form
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                  validator: (value) {
                    if(value!.isEmpty || value == '') {
                      return 'Please enter your email';
                    }
                    if(!_emailRegex.hasMatch(value)) {
                      return 'Email address is not valid';
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
