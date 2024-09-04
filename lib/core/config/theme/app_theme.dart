import 'package:flutter/material.dart';

import 'package:todyapp/core/config/theme/app_colors.dart';

/// This class contains the theme data used in the app.
/// TODO: Implement
class AppTheme {
  /// The light theme data.
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    textTheme: _lightTextTheme,
  );

  // Color scheme of the app
  static const ColorScheme _lightColorScheme = ColorScheme(
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
    surface: AppColors.bgColor,
    error: AppColors.errorColor,
    onPrimary: AppColors.primaryForegroundColor,
    onSecondary: AppColors.secondaryForegroundColor,
    onSurface: AppColors.foregroundColor,
    onError: AppColors.errorForegroundColor,
    brightness: Brightness.light,
  );

  // Text theme of the app
  static const TextTheme _lightTextTheme = TextTheme(
    bodyLarge: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  );

  /// The dark theme data.
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
  );
}
