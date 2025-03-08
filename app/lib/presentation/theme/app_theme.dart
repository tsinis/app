// ignore_for_file: no-equal-arguments

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

sealed class AppTheme {
  static const blue = Color(0xFF002873);
  static const orange = Color(0xFFFF8F16);

  static const black = Colors.black;
  static const darkGrey = Color(0xFF595959);
  static const lightGrey = Color(0xFFE9E9E9);
  static const white = Colors.white;

  static const size = 16.0;

  static ThemeData get data => ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: blue,
      titleTextStyle: TextStyle(
        color: white,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    ),
    brightness: Brightness.light,
    cardTheme: const CardThemeData(
      clipBehavior: Clip.antiAlias,
      color: white,
      elevation: 6,
      margin: EdgeInsets.symmetric(horizontal: size, vertical: 12),
      shadowColor: white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
    dividerTheme: const DividerThemeData(color: lightGrey),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: orange,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: white,
      height: 80,
      indicatorColor: white,
      shadowColor: black,
    ),
    primaryColor: blue,
    scaffoldBackgroundColor: white,
    textTheme: GoogleFonts.openSansTextTheme(
      const TextTheme(
        bodyMedium: TextStyle(color: darkGrey, fontSize: 12),
        titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
        titleSmall: TextStyle(color: darkGrey, fontSize: 14),
      ),
    ),
    useMaterial3: true,
  );
}
