import 'package:flutter/material.dart';

import 'app_theme.dart';

const fontFamily = 'Inter';

final themeLight = ThemeData(
  primarySwatch: Colors.purple,
  fontFamily: fontFamily,
  primaryColor: AppTheme.light.primary,
  brightness: Brightness.light,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ThemeData.light().colorScheme.copyWith(
        primary: AppTheme.light.primary,
        background: AppTheme.light.background,
        secondary: AppTheme.light.accent,
      ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
);

final themeDark = ThemeData(
  primarySwatch: Colors.purple,
  fontFamily: fontFamily,
  primaryColor: AppTheme.light.primary,
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.grey[900],
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: AppTheme.light.primary,
        background: AppTheme.light.background,
        brightness: Brightness.dark,
      ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
);
