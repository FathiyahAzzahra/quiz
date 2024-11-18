import 'package:flutter/material.dart';
import 'theme.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemes.themeA; // Default theme

  ThemeData get currentTheme => _currentTheme;

  void changeTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }
}
