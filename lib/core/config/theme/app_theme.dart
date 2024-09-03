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
  );

  // Color scheme of the app
  static const ColorScheme _lightColorScheme = ColorScheme(
    primary: AppColors.brandDefault,
    secondary: AppColors.brandBackground,
    surface: AppColors.neutralBackground,
    error: AppColors.errorDefault,
    onPrimary: AppColors.neutralWhite,
    onSecondary: AppColors.brandDefault,
    onSurface: AppColors.neutralPrimary,
    onError: AppColors.neutralWhite,
    brightness: Brightness.light,
  );

  /// The dark theme data.
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
  );
}
