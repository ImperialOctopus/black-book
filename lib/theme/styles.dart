import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: Colors.grey[800],
  accentColor: Colors.purpleAccent[100],

  // Define the default font family.
  fontFamily: 'Montserrat',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    headline5: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 16.0),
  ),

  dividerTheme: DividerThemeData(
    thickness: 1,
    space: 1,
  ),
);
