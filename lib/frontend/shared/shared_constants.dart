import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color(0xFF3377FF);
  static LinearGradient primaryGradient = const LinearGradient(
    colors: [
      Color(0xFF09C6F9),
      Color(0xFF045DE9),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static LinearGradient cardGradientLight = const LinearGradient(
    colors: [
      Color(0xFF161626),
      Color(0xFF000000),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static LinearGradient cardGradientDark = const LinearGradient(
    colors: [
      Color(0xFF161626),
      Color.fromARGB(197, 255, 255, 255),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
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
