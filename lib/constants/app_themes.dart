import 'package:posty/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:posty/constants/globals.dart';

class AppThemes {
  AppThemes._();
  static const Color _primaryColor = white;
  static const Color _lightIconsColors = blacky;
  static const Color _lightScaffoldBackground = whiteLilac;
  static const Color _lightButtonsColor = blacky;
  static const Color _lightTextColor = blacky;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: _primaryColor,
    scaffoldBackgroundColor: _lightScaffoldBackground,
    fontFamily: Globals.appFontFamily,
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 20.0, color: _lightTextColor),
      bodyText1: TextStyle(fontSize: 16.0, color: _lightTextColor),
      bodyText2: TextStyle(fontSize: 14.0, color: Colors.grey),
      button: TextStyle(
          fontSize: 15.0,
          color: _lightScaffoldBackground,
          fontWeight: FontWeight.w600),
      headline6: TextStyle(fontSize: 16.0, color: _lightTextColor),
      subtitle1: TextStyle(fontSize: 16.0, color: _lightTextColor),
      caption: TextStyle(fontSize: 12.0, color: _lightScaffoldBackground),
    ),
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(color: _lightIconsColors),
      color: white,
      elevation: 0,
    ),
    buttonColor: _lightButtonsColor,
    iconTheme: IconThemeData(color: _lightIconsColors),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: _lightButtonsColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(primary: blacky),
    ),
    colorScheme: ColorScheme.light(
      primary: _primaryColor,
      primaryVariant: _lightScaffoldBackground,
    ),
  );
}
