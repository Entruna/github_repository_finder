import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: AppColors.lightColorScheme,
    textTheme: AppTextStyles.textTheme,
    scaffoldBackgroundColor: AppColors.gray100,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
    ),
    appBarTheme: AppBarTheme(backgroundColor: Colors.white, foregroundColor: AppColors.gray900, elevation: 0.5),
  );

  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: AppColors.darkColorScheme,
    textTheme: AppTextStyles.textThemeDark,
    scaffoldBackgroundColor: AppColors.darkColorScheme.surface,
    cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: Colors.white, width: 1))),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.white, width: 1)),
      ),
    ),

    appBarTheme: AppBarTheme(backgroundColor: AppColors.darkColorScheme.surface, foregroundColor: Colors.white, elevation: 0.5),
  );
}
