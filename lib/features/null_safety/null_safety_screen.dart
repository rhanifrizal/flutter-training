import 'package:flutter/material.dart';

class NullSafetyScreen extends StatelessWidget {
  const NullSafetyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Null Safety";
    /// Two type of categories
    /// Nullable and non-nullable
    /// Nullable type: can hold a value or be null
    /// Non-nullable type: can never be null.

    /// To represent a nullable type, use ? symbol
    /// Nullable type : int? number
    /// Non-nullable : int number

    /// It is important to perform null checks when using nullable types
    /// Or it may turn into runtime errors.

    /// To perform null checks, can use:
    /// ?. operator or the
    /// ?? null-aware operator

    /// Best Practice
    /// 1. Always initialize non-nullable variable
    /// int nonNullableInt = 0;
    /// String? nullableString;

    /// 2. Use late variables wisely
    /// In some cases, you may need to declare a non-nullable variable without
    /// initializing it right away. The 'late' keyword allow you to do this.
    /// But must your it with caution, it might lead to runtime errors
    /// if not initialized before being accessed.
    /// late int lateInitializedInt;
    /// void initializeLateInt() {
    ///   lateInitializedInt = 10;
    /// }

    /// 3. Leverage Null-Aware Operators
    /// int? nullableInt;
    /// int nonNullableInt = nullableInt ?? 0; Using the null aware ?? operator

    /// 4. Handle Nullable Callbacks and Functions
    /// typedef VoidCallback = void Function();
    /// class MyButton extends StatelessWidget {
    ///   final VoidCallback? onPressed;
    ///   MyButton({required this.onPressed});
    ///   @override
    ///   Widget build(BuildContext context) {
    ///     return ElevatedButton(
    ///       onPressed: onPressed != null ? () => onPressed!() : null,
    ///       child: Text('Press me'),
    ///     );
    ///   }
    /// }

    /// Conditional Access Operator ?.
    /// Purpose: To access a property or method only if the object is not null.
    /// If the object is null, the entire expression evaluates to null.
    String? name;
    int? nameLength = name?.length; /// If the name is null, nameLength is null
    debugPrint(nameLength.toString());

    /// Null-Coalescing Operator ??
    /// Purpose: To provide a default value if an expression evaluates to null.
    String? username;
    String displayName = username ?? 'Guest'; /// If the username is null, displayName is 'Guest'
    debugPrint(displayName);

    /// Null-Coalescing Assignment Operator ??=
    /// Purpose: To assign a value to a variable only if it is currently null
    int? count;
    count ??= 0; /// If count is null, assign 0 to it

    /// Null-Aware Spread Operator ...?
    /// Purpose: To insert elements into a collection if the collection is not null
    List<int>? numbers;
    var list = [1, 2, ...?numbers]; /// If numbers is null, it doesn't add anything
    debugPrint(list.toString());

    /// Null-Aware Index Operator ?[]
    /// Purpose: To access an element in a collection only if the collection is not null
    Map<String, String>? user;
    String? email = user?['email']; /// If user is null, email is null
    debugPrint(email);

    /// Null Assertion Operator !
    /// Purpose: To assert that an expression is not null, and cast it to a non-nullable type.
    /// If the value is null, a runtime error occurs.
    String? name2;
    // print(name2!); /// Throws an error if name is null

    /// Performing Null Checks
    void greet(String? name) {
      if(name != null) {
        debugPrint('Hello, $name!');
      } else {
        debugPrint('Hello, Guest!');
      }
    }
    greet('');

    /// Common Pitfalls and Best Practices
    /// Avoid Overusing the Null Assertion Operator !
    /// Example:
    String? getName() {
      /// Some logic that might return null
      return null;
    }
    getName();

    void printName() {
      String name = getName()!; /// Risky if getName() returns null
      debugPrint(name);
    }

    /// Better Approach
    void printName2() {
      String? name = getName();
      if(name != null) {
        debugPrint(name);
      } else {
        debugPrint('No name provided.');
      }
    }
    printName2();

    /// Initialize Variable When Possible
    String title2 = '';
    int count2 = 0;
    debugPrint(title2);
    debugPrint(count2.toString());

    /// Use late keyword for non-nullable variables initialized later
    // late String configuration;
    // void setup() {
    //   configuration = loadConfig();
    // }
    //
    // void run() {
    //   debugPrint(configuration);
    // }

    /// Handle Asynchronous Nulls carefully
    // Future<void> fetchUserData() async {
    //   UserData? data = await getUserData();
    //   if(data != null) {
    //     processUserData(data);
    //   } else {
    //     handleMissingData();
    //   }
    // }

    /// Var is used to declare a variable whose type is inferred by the compiler
    /// based on the value assigned to it.
    /// Once the type is inferred, the variable's type is fixed and cannot change.
    /// var is nullable and non-nullable
    var name3 = 'John'; /// Inferred as String, cannot later assign an int
    name = 'Doe'; /// Valid (String)
    // name = 123; /// Error: Can't assign an int to a String variable

    /// Final variable can only be set once. After its initial assignment,
    /// the value cannot be changed.
    final String name4 = 'John'; /// Explicit type, cannot changed after assignment
    // final name4 = 'John'; /// Type inferred as String
    // name4 = 'Doe'; /// Error: Cannot assign to a final variable
    /// final variable can also be nullable. However, once a nullable final is assigned
    /// to null or any other value, it cannot be reassigned
    final String? nullableFinal; /// Nullable, but must be assigned before usage
    nullableFinal = 'John'; /// Now contains 'John', cannot be changed again

    /// Late allows you to declare a variable that will be initialized later, but not
    /// immediately upon declaration
    /// it works with both final and non-final variable
    late final String name5;
    name = 'John';


    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
    );
  }
}
