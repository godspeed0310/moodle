import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color(0xFF3377FF);
}

class Themes {
  static ThemeData light = FlexColorScheme.light(
    colors: FlexSchemeColor.from(primary: AppColors.primaryColor),
  ).toTheme;
  static ThemeData dark = FlexColorScheme.dark(
    colors: FlexSchemeColor.from(primary: AppColors.primaryColor),
    scaffoldBackground: Colors.black,
  ).toTheme;
}
