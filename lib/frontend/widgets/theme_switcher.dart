import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDarkEnabled = Theme.of(context).brightness == Brightness.dark;

    return IconButton(
      onPressed: () {
        if (isDarkEnabled) {
          getThemeManager(context).setThemeMode(ThemeMode.light);
        } else {
          getThemeManager(context).setThemeMode(ThemeMode.dark);
        }
      },
      icon: Icon(
        isDarkEnabled ? EvaIcons.sun : EvaIcons.moon,
      ),
    );
  }
}
