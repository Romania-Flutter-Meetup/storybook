import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData getLightTheme(BuildContext context) {
    return ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black, displayColor: Colors.black));
  }

  static ThemeData getDarkTheme(BuildContext context) {
    return ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.cyan,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white, displayColor: Colors.white));
  }
}
