import 'package:flutter/material.dart';

/// A primary button widget.
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.size = const Size(double.infinity, 56),
    this.padding,
  });

  /// The function to be called when the button is pressed.
  final VoidCallback onPressed;

  /// The child widget to be displayed inside the button.
  final Widget child;

  final Size size;
  final Padding? padding;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        minimumSize: WidgetStatePropertyAll<Size>(size),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
