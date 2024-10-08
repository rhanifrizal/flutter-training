import 'package:flutter/material.dart';
import 'package:flutter_training/features/dashboard/screens/dashboard_screen.dart';
import 'package:flutter_training/features/navigation/second_screen.dart';

import 'model/person_model.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const DashboardScreen(),
      );
    case '/second':
    // Extract arguments if there are any
      final args = settings.arguments;
      if (args is String) {
        return MaterialPageRoute(
          builder: (context) => SecondScreen(data: args),
        );
      } else if (args is Person) {
        return MaterialPageRoute(
          builder: (context) => SecondScreen(person: args),
        );
      }
      // If no args provided, return a default route or error
      return MaterialPageRoute(
        builder: (context) => const SecondScreen(),
      );
    default:
    // If the route is not defined, navigate to a "Dashboard" page
      return MaterialPageRoute(
        builder: (context) => const DashboardScreen(),
      );
  }
}