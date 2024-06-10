import 'package:flutter/material.dart';

class AppTheme {
  final bool isDarkMode;

  static const _colorDefaultScheme = ColorScheme(
    brightness: Brightness.light,
    surfaceTint: Colors.white,
    error: Colors.red,
    onError: Colors.redAccent,
    primary: Color(0xff5ce1e6),
    onPrimary: Colors.white,
    secondary: Color(0xff8c52ff),
    onSecondary: Colors.white,
    surface: Colors.white,
    onSurface: Color(0xff8c52ff),
  );

  AppTheme({this.isDarkMode = false});

  ThemeData getTheme() {
    var baseTheme = ThemeData();

    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      colorScheme: _colorDefaultScheme,
      textTheme: baseTheme.textTheme.copyWith(
        titleLarge: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
        labelLarge: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        labelMedium: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        displaySmall: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        )
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.white,
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        )
      ),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          iconColor: WidgetStatePropertyAll<Color>(Colors.black)
        )
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _colorDefaultScheme.secondary
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: _colorDefaultScheme.tertiary
      )
    );
  }
}
