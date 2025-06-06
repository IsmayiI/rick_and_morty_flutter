import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class TextStyles {
  static const double largeFZ = 22;
  static const double mediumFZ = 18;
  static const double smallFZ = 16;

  static const h1 = TextStyle(
    fontSize: largeFZ,
    fontWeight: FontWeight.w800,
    color: AppColorsLight.primary,
  );
  static const h2 = TextStyle(
    fontSize: mediumFZ,
    fontWeight: FontWeight.w400,
    color: AppColorsLight.primary,
  );
  static const h3 = TextStyle(
    fontSize: smallFZ,
    fontWeight: FontWeight.w500,
    color: AppColorsLight.secondary,
  );
}
