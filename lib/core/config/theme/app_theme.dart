import 'package:flutter/material.dart';

import 'package:todyapp/core/config/theme/app_colors.dart';

/// This class contains the theme data used in the app.
class AppTheme {
  /// The light theme data.
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: _colorScheme,
  );

  // Color scheme of the app
  static final ColorScheme _colorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.brandDefault,
  );

  /// The dark theme data.
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
  );
}
