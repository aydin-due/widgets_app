import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.deepOrangeAccent,
      //appbar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      //textbutton
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      //floating action btn
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5),

      //elevated btn
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape:  const StadiumBorder(),
          elevation: 0
        )
      )
      
      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.deepOrangeAccent,
      //appbar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black);
}
