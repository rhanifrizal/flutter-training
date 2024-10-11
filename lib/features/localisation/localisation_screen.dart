import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/features/localisation/riverpod/locale_notifier.dart';
import '../../generated/l10n.dart';

class LocalisationScreen extends ConsumerWidget {
  const LocalisationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const title = "Localisation";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(S.of(context).helloWorld),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Change the locale to Bahasa when the button is pressed
                ref.read(localeProvider.notifier).setLocale(const Locale('ms'));
              },
              child: const Text('Change to Bahasa'),
            ),
            ElevatedButton(
              onPressed: () {
                // Change the locale back to English
                ref.read(localeProvider.notifier).setLocale(const Locale('en'));
              },
              child: const Text('Change to English'),
            ),
          ],
        ),
      )
    );
  }
}
