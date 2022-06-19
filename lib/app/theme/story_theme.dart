import 'package:flutter/material.dart';
import 'package:story_clean/app/theme/colors.dart';

class StoryTheme {
  static ThemeData get light {
    return ThemeData(
      backgroundColor: white,
      appBarTheme: const AppBarTheme(
        color: greyBackgroundColor,
      ),
      scaffoldBackgroundColor: greyBackgroundColor,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: white,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      toggleableActiveColor: greyBackgroundColor,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      backgroundColor: darkColor,
      appBarTheme: const AppBarTheme(
        color: darkColor,
      ),
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        accentColor: hintColor,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      toggleableActiveColor: darkColor,
    );
  }
}