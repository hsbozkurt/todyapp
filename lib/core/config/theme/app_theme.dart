import 'package:flutter/material.dart';

/// This class contains the theme data used in the app.
class AppTheme {
  /// The light theme data.
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
  );

  /// The dark theme data.
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true
  );
}
