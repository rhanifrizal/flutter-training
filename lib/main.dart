import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/features/dashboard/screens/dashboard_screen.dart';
import 'package:flutter_training/features/navigation/app_route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'features/localisation/riverpod/locale_notifier.dart';
import 'generated/l10n.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(
    // Wrap the app in a ProviderScope to use Riverpod
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to the localeProvider to get the current locale
    final locale = ref.watch(localeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: locale, // Set the locale from the provider
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: onGenerateRoute,
      home: const DashboardScreen(),
    );
  }
}