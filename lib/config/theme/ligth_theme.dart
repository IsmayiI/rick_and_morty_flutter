import 'package:flutter/material.dart';

import 'app_colors.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColorsLight.background,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w900,
      color: AppColorsLight.background,
    ),
  ),
);
