import 'package:flutter/material.dart';
import 'package:web_testing/app_routes.dart';
import 'package:web_testing/locator.dart';
import 'package:web_testing/services/app_navigation.dart';

import 'configs/core_theme.dart' as theme;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUpLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: theme.themeLight,
      debugShowCheckedModeBanner: false,
      navigatorKey: locator<AppNavigation>().navigatorKey,
      initialRoute: AppRoutes.calendarScreen,
      onGenerateRoute: AppNavigation.onGenerateRoute,
    );
  }
}
