import 'package:event_handler/cores/local_data/local_data.dart';
import 'package:event_handler/cores/local_data/local_data_handler.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum AppThemeMode { light, dark, system }

class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier() : super(_getInitialTheme());

  updateTheme(AppThemeMode mode) {
    switch (mode) {
      case AppThemeMode.light:
        state = ThemeMode.light;
        break;
      case AppThemeMode.dark:
        state = ThemeMode.dark;
        break;
      case AppThemeMode.system:
        state = ThemeMode.system;
        break;
    }
    LocalDataHandler.storeData(
      itemKey: LocalDataString.appThemeName,
      data: state.name,
    );
    // _reopenSheet();
  }

  static ThemeMode _getInitialTheme() {
    final themeName = LocalDataHandler.fetchData(
      itemKey: LocalDataString.appThemeName,
    );
    switch (themeName) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.light;
    }
  }
}

final appThemeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier();
});
