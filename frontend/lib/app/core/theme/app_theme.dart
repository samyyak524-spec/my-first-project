import 'package:flutter/material.dart';

class AppTheme {
  static const Color olive = Color(0xFF6B8E23);
  static const Color earthBrown = Color(0xFF7B4F2A);
  static const Color white = Color(0xFFFFFFFF);

  static ThemeData get lightTheme {
    final base = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: olive,
        primary: olive,
        secondary: earthBrown,
        surface: white,
      ),
    );

    return base.copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
