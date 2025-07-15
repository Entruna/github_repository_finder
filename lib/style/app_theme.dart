import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: AppColors.lightColorScheme,
    textTheme: AppTextStyles.textTheme,
    scaffoldBackgroundColor: AppColors.gray100,
    appBarTheme: AppBarTheme(backgroundColor: Colors.white, foregroundColor: AppColors.gray900, elevation: 0.5),
  );

  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: AppColors.darkColorScheme,
    textTheme: AppTextStyles.textThemeDark,
    scaffoldBackgroundColor: AppColors.darkColorScheme.surface,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.darkColorScheme.surface, foregroundColor: Colors.white, elevation: 0.5),
  );
}
