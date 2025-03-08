// ignore_for_file: no-equal-arguments

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

sealed class AppTheme {
  static const blue = Color(0xFF002873);
  static const orange = Color(0xFFFF8F16);

  static const black = Colors.black;
  static const white = Colors.white;

  static ThemeData get data => ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: blue,
      titleTextStyle: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    brightness: Brightness.light,
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: white,
      height: 80,
      indicatorColor: white,
      shadowColor: black,
    ),
    primaryColor: blue,
    scaffoldBackgroundColor: white,
    textTheme: GoogleFonts.openSansTextTheme(),
    useMaterial3: true,
  );
}
