import 'package:flutter/material.dart';

class Palete {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
    //AppBar Theme

    //Bottom Navigation
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
    ),
  );
  static ThemeData darkTheme = ThemeData.dark();
}
