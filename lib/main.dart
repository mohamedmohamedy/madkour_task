import 'package:flutter/material.dart';
import 'package:madkour_task/core/resources/routes.dart';
import 'package:madkour_task/core/resources/theme_manager.dart';
import 'package:madkour_task/modules/home/screens/home.dart';
import 'package:sizer/sizer.dart';

import 'core/resources/strings_mangager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        title: StringsManager.appName,
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeManager.getApplicationDarkTheme(),
        themeMode: ThemeMode.dark,
        home: const HomeScreen(),
        routes: Routes.routes,
      ),
    );
  }
}
