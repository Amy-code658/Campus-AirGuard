import 'package:flutter/material.dart';

class AppTheme {
  // Primary Colors
  static const Color primaryGreen = Color(0xFF2E7D32);
  static const Color lightGreen = Color(0xFF66BB6A);
  static const Color darkGreen = Color(0xFF1B5E20);

  // Secondary Colors
  static const Color ecoBlue = Color(0xFF4FC3F7);
  static const Color accentGreen = Color(0xFF81C784);

  // Background Colors
  static const Color backgroundColor = Color(0xFFF5FFF5);
  static const Color cardColor = Colors.white;

  // Status Colors
  static const Color successColor = Color(0xFF43A047);
  static const Color warningColor = Color(0xFFFFB300);
  static const Color errorColor = Color(0xFFE53935);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryGreen,
      primary: primaryGreen,
      secondary: ecoBlue,
      surface: backgroundColor,
      brightness: Brightness.light,
    ),

    scaffoldBackgroundColor: backgroundColor,

    appBarTheme: const AppBarTheme(
      backgroundColor: primaryGreen,
      foregroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
    ),

    cardTheme: CardThemeData(
      color: cardColor,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryGreen,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryGreen,
        side: const BorderSide(color: primaryGreen, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(
          color: Colors.green.shade100,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(
          color: primaryGreen,
          width: 2,
        ),
      ),
    ),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: darkGreen,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: darkGreen,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: primaryGreen,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ecoBlue,
      foregroundColor: Colors.white,
    ),

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: primaryGreen,
    ),

    chipTheme: ChipThemeData(
      backgroundColor: lightGreen.withValues(alpha: 0.15),
      selectedColor: primaryGreen,
      labelStyle: const TextStyle(
        color: darkGreen,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );
}