import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {

  static final instance = ThemeNotifier();

  bool _isDarkTheme = false;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}