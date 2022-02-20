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
  textTheme: TextTheme(
    headline1: GoogleFonts.lato(
        fontSize: 101, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.lato(
        fontSize: 63, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.lato(fontSize: 50, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.lato(
        fontSize: 36, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.lato(
        fontSize: 21, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.lato(
        fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.lato(
        fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.lato(
        fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.lato(
        fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.lato(
        fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.lato(
        fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.lato(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  ),
);
