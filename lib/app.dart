import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:todyapp/presentation/screens/home.dart';
import 'package:todyapp/presentation/screens/onboarding.dart';

import 'package:todyapp/core/config/theme/app_theme.dart';
import 'package:todyapp/core/config/storage/local_keys.dart';

/// The root widget of your application
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      // TODO: darkTheme: AppTheme.darkTheme,
      home: _buildInitialRoute(),
    );
  }

  /// Build the initial route based on the user's onboarding status
  Widget _buildInitialRoute() {
    return FutureBuilder<bool>(
      future: _isOnboardingComplete(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return snapshot.data ?? false
              ? const HomeScreen()
              : const OnboardingScreen();
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  /// Check if the user has completed the onboarding process
  Future<bool> _isOnboardingComplete() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(LocalKeys.onboardingComplete) ?? false;
  }
}
