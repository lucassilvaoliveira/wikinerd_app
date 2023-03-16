import 'package:flutter/material.dart';
import 'package:wikinerd/global/constants.dart';

ThemeData themeData({required Color primaryColor}) => ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: kScaffoldColor,
      textTheme: const TextTheme(
        displaySmall: TextStyle(fontSize: 13, color: kDefaultTextColor),
        displayMedium: TextStyle(fontSize: 16, color: kDefaultTextColor),
        displayLarge: TextStyle(fontSize: 20, color: kDefaultTextColor),
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: primaryColor,
        onPrimary: primaryColor,
        secondary: kPrimaryContainer,
        onSecondary: kPrimaryContainer,
        error: Colors.red,
        onError: Colors.red,
        background: kScaffoldColor,
        onBackground: kScaffoldColor,
        surface: kPrimaryContainer,
        onSurface: kPrimaryContainer,
      ),
    );
