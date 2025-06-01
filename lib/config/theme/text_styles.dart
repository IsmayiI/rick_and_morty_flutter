import 'package:flutter/material.dart';

abstract class TextStyles {
  static const double largeFZ = 22;
  static const double mediumFZ = 18;
  static const double smallFZ = 16;

  static const h1 = TextStyle(fontSize: largeFZ, fontWeight: FontWeight.w800);
  static const h2 = TextStyle(fontSize: mediumFZ, fontWeight: FontWeight.w400);
  static const h3 = TextStyle(fontSize: smallFZ, fontWeight: FontWeight.w500);

  static const textTheme = TextTheme(
    headlineLarge: h1,
    headlineMedium: h2,
    headlineSmall: h3,
  );
}
