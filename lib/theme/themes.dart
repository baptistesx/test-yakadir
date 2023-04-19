import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeColors {
  final MaterialColor primarySwatch;
  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundBottom;
  final Color backgroundTop;
  final Color greenGray;

  ThemeColors({
    required this.primarySwatch,
    required this.primaryColor,
    required this.secondaryColor,
    required this.backgroundBottom,
    required this.backgroundTop,
    required this.greenGray,
  });
}

class AppTheme {
  final int _secondaryInt = 0xFFFAAF19;
  static const int _primaryInt = 0xFF0D9277;
  static const int _backgroundTop = 0xFFc9e8c6;
  static const int _backgroundBottom = 0xFF80bda6;
  static const int _greenGray = 0xFF6D827A;

  ThemeColors get lightColors => ThemeColors(
        primaryColor: const Color(_primaryInt),
        primarySwatch: const MaterialColor(
          _primaryInt,
          <int, Color>{
            50: Color(0xFFE2F2EF),
            100: Color(0xFFB6DED6),
            200: Color(0xFF86C9BB),
            300: Color(0xFF56B3A0),
            400: Color(0xFF31A28B),
            500: Color(_primaryInt),
            600: Color(0xFF0B8A6F),
            700: Color(0xFF097F64),
            800: Color(0xFF07755A),
            900: Color(0xFF036347),
          },
        ),
        secondaryColor: Color(_secondaryInt),
        backgroundTop: const Color(_backgroundTop),
        backgroundBottom: const Color(_backgroundBottom),
        greenGray: const Color(_greenGray),
      );

  ThemeColors get darkColors => lightColors;

  ThemeData get lightTheme => ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: lightColors.primaryColor,
        primarySwatch: lightColors.primarySwatch,
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          primary: lightColors.primaryColor,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(),
        ).apply(
          displayColor: Colors.black,
        ),
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.white),
      );

  ThemeData get darkTheme => lightTheme;
}

extension AppThemeExtension on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  ThemeData get theme => Theme.of(this);

  ThemeColors get themeColors {
    final AppTheme appTheme = Provider.of<AppTheme>(this);
    if (isDarkMode) {
      return appTheme.darkColors;
    } else {
      return appTheme.lightColors;
    }
  }
}
