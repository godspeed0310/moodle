import 'package:flutter/material.dart';
import 'package:moodle/backend/app/app.locator.dart';
import 'package:moodle/backend/app/app.router.dart';
import 'package:moodle/frontend/shared/shared_constants.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

void main() async {
  await ThemeManager.initialise();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return ThemeBuilder(
          lightTheme: Themes.light,
          darkTheme: Themes.dark,
          defaultThemeMode: ThemeMode.light,
          builder: (context, lightTheme, darkTheme, themeMode) {
            return MaterialApp(
              title: 'Moodle',
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: themeMode,
              navigatorKey: StackedService.navigatorKey,
              onGenerateRoute: StackedRouter().onGenerateRoute,
            );
          },
        );
      },
    );
  }
}
