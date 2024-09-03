import 'package:flutter/material.dart';

/// Onboarding screen
/// This screen introduces the app to new users.
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getting Started'),
      ),
    );
  }
}
