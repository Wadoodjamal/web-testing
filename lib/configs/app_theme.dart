import 'package:flutter/material.dart';
import 'app_core_theme.dart';

class AppTheme {
  static final _core = AppCoreTheme(
    primary: const Color(0x0ffd5db8),
    accent: const Color(0xffEEDF3F),
    text: const Color(0x0ff00d1d),
    textSub: const Color(0xffEEDF3F),
    background: const Color(0xffF6F6F6),
    backgroundSub: const Color(0xFFF3FBFE),
    shadow: Colors.black.withOpacity(0.25),
    shadowSub: const Color(0xFFE5EEFF),
  );

  static AppCoreTheme light = _core;

  static AppCoreTheme dark = _core;

  static late AppCoreTheme c;

  // Init
  static init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}
