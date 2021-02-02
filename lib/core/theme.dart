import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

const Color primaryColor = Color(0xFF07599d);
const Color accentColor = Color(0xFF46d1fd);
const Color darkGrey = Color(0xFF121212);
const Map<int, Color> primarySwatch = <int, Color>{
  50: Color.fromRGBO(7, 89, 157, .1),
  100: Color.fromRGBO(7, 89, 157, .2),
  200: Color.fromRGBO(7, 89, 157, .3),
  300: Color.fromRGBO(7, 89, 157, .4),
  400: Color.fromRGBO(7, 89, 157, .5),
  500: Color.fromRGBO(7, 89, 157, .6),
  600: Color.fromRGBO(7, 89, 157, .7),
  700: Color.fromRGBO(7, 89, 157, .8),
  800: Color.fromRGBO(7, 89, 157, .9),
  900: Color.fromRGBO(7, 89, 157, 1),
};

final themeData = ThemeData(
  colorScheme: const ColorScheme(
    primary: primaryColor,
    primaryVariant: primaryColor,
    secondary: Colors.white,
    secondaryVariant: Colors.black,
    surface: primaryColor,
    background: darkGrey,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.black,
    brightness: Brightness.dark,
  ),
  primaryColor: primaryColor,
  accentColor: Colors.white,
  dialogBackgroundColor: darkGrey,
  backgroundColor: darkGrey,
  primarySwatch: const MaterialColor(0xFF07599d, primarySwatch),
  toggleableActiveColor: primaryColor,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
    ),
    contentPadding: EdgeInsets.all(0.0),
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0.sp)),
    color: primaryColor,
  ),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0.sp),
    ),
    buttonColor: primaryColor,
    textTheme: ButtonTextTheme.primary,
  ),
  // Add text theme to apply white texts
  textTheme: GoogleFonts.latoTextTheme(TextTheme()),
);
