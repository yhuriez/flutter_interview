import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeNotifier with ChangeNotifier {

  ThemeNotifier(Brightness platformBrightness) {
    _isDarkTheme = platformBrightness == Brightness.dark;
  }

  static final instance = ThemeNotifier(SchedulerBinding.instance.window.platformBrightness);

  bool _isDarkTheme = false;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}
