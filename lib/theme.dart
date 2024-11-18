import 'package:flutter/material.dart';

class AppThemes {
  static final themeA = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.blue.shade100,
    iconTheme: const IconThemeData(color: Colors.blue),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
          fontFamily: 'sans-serif', fontSize: 16, color: Colors.black),
      bodyMedium:
          TextStyle(fontFamily: 'sans-serif', fontSize: 14, color: Colors.grey),
      headlineSmall: TextStyle(
          fontFamily: 'sans-serif', fontSize: 18, color: Colors.black),
    ),
  );

  static final themeB = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.grey,
    scaffoldBackgroundColor: const Color.fromARGB(255, 85, 80, 80),
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      bodyLarge:
          TextStyle(fontFamily: 'serif', fontSize: 14, color: Colors.white),
      bodyMedium:
          TextStyle(fontFamily: 'serif', fontSize: 12, color: Colors.grey),
      headlineSmall:
          TextStyle(fontFamily: 'serif', fontSize: 14, color: Colors.white),
    ),
  );

  static final themeC = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green.shade100,
    iconTheme: const IconThemeData(color: Colors.green),
    textTheme: const TextTheme(
      bodyLarge:
          TextStyle(fontFamily: 'monospace', fontSize: 14, color: Colors.black),
      bodyMedium:
          TextStyle(fontFamily: 'monospace', fontSize: 12, color: Colors.grey),
      headlineSmall:
          TextStyle(fontFamily: 'monospace', fontSize: 14, color: Colors.black),
    ),
  );
}
