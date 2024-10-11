import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier() : super(const Locale('en')); // Set the default locale to English

  // Function to update the locale
  void setLocale(Locale newLocale) {
    state = newLocale;
  }
}

// The provider for accessing and modifying the locale
final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier();
});
