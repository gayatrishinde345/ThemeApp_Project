import 'package:flutter/material.dart';

//  Light Theme Colors
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.deepPurple,
  scaffoldBackgroundColor: Colors.grey[100],
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.deepPurple,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    centerTitle: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    ),
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
  ),
);

//  Dark Theme Colors
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.purpleAccent,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.purpleAccent,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    centerTitle: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.purpleAccent,
      foregroundColor: Colors.white,
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    ),
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
  ),
);
