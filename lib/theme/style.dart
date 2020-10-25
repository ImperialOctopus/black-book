import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: Colors.grey[800],
  accentColor: Colors.blueAccent,

  dividerTheme: const DividerThemeData(
    thickness: 1,
    space: 1,
  ),
);
