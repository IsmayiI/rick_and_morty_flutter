import 'package:flutter/material.dart';

abstract class AppColors {
  static const primary = Color(0xFFF5F5F5);
  static const secondary = Color(0xFF9E9E9E);
  static const background = Color(0xFF272B33);
  static const cardBackground = Color(0xFF3C3E44);

  static const colorSchemeLight = ColorScheme.light(
    primary: primary,
    secondary: secondary,
    primaryContainer: cardBackground,
  );
}
