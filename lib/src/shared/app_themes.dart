import 'package:flutter/material.dart';
import 'package:super_app/src/shared/app_colors.dart';

class AppThemes {
  const AppThemes._();

  static final themeLight = ThemeData(
      colorScheme: ColorScheme.light(
          primary: AppColors.primaryLight,
          secondary: AppColors.secondaryLight,
          surface: AppColors.surfaceLight,
          background: AppColors.backgroundLight),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
    )
  );
  static final themeDark = ThemeData.dark();
}
