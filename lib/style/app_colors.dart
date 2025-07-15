import 'package:flutter/material.dart';

class AppColors {
  // Alapszínek
  static const primary = Color(0xFF24292E);
  static const secondary = Color(0xFF0366D6);

  static const gray100 = Color(0xFFF6F8FA);
  static const gray200 = Color(0xFFE1E4E8);
  static const gray300 = Color(0xFFD1D5DA);
  static const gray700 = Color(0xFF586069);
  static const gray900 = Color(0xFF24292E);

  static final lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: Colors.white,
    secondary: secondary,
    onSecondary: Colors.white,
    surface: Colors.white,
    onSurface: gray900,
    error: Colors.red,
    onError: Colors.white,
  );

  static final darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: gray100,
    onPrimary: gray900,
    secondary: secondary,
    onSecondary: Colors.black,
    surface: Color(0xFF161B22),
    onSurface: gray100,
    error: Colors.red[400]!,
    onError: Colors.black,
  );
}
