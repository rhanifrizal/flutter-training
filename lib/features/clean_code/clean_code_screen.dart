import 'package:flutter/material.dart';

class CleanCodeScreen extends StatelessWidget {
  const CleanCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text('Clean Code Practice'),
          // Good name convention
          // class MyClass {}

          // Bad Naming convention
          // class my_class {}


          // Use Description Variable and Function Names
          // Good variable name
          // final String fullName = 'John Doe';

          //Bad variable name
          // final String name = 'John Doe';


          // Use Proper Indentation and formatting
          // Good identation and formatting
          // void myFunction() {
          //  if (condition) {
          //    doSomething();
          //  } else {
          //    doSomethingElse();
          //  }
          // }

          // Bad identation and formatting
          // void myFunciton() {if(condition){doSomething();}else{doSomethingElse();}}


          // Use comments to Explain code
          // Good comment
          // This function calculates the sum of two integers
          // int sum(int a, int b) {
          //   return a + b;
          // }

          // Bad comment
          // Adds two numbers
          // int add(int a, int b) {
          //   return a + b;
          // }


          // Single Responsibility Principle (SRP)
          // Each class or funciton should have single responsibility and should
          // not be responsible for multiple tasks. For example, separating UI
          // components, business logc, and data access logic into separate classes.


          // Modularization
          // Breaks down the app into smaller, reusable, and independent modules
          // /components that are easier to understand, maintain and test.
          // e.g. class Dependencies {}, class UserDataRepository {}, class UserDataBloc {}


          // Test-Driven Development (TDD)
          // Write test to ensure that the code behaves as expected and to catch
          // any potential issues early in the development process.
          // class Calculator {
          //   int add(int a, int b) {
          //     return a + b;
          //   }
          // }
          // void main() {
          //   test('Test Addition', () {
          //     Calculator calculator = Calculator();
          //     expect(calculator.add(2, 3), 5);
          //   });
          // }
        ],
      ),
    );
  }
}
