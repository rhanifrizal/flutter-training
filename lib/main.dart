import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_training/features/dashboard/screens/dashboard_screen.dart';
import 'package:flutter_training/features/navigation/app_route.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: onGenerateRoute,
      home: const DashboardScreen(),
    );
  }
}