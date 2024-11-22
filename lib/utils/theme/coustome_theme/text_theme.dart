import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NTextTheme {
  NTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    //headline
    headlineLarge: GoogleFonts.openSans().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: GoogleFonts.openSans().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: GoogleFonts.openSans().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
//title
    titleLarge: GoogleFonts.openSans().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: GoogleFonts.openSans().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: GoogleFonts.openSans().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black),
    //bodylarge
    bodyLarge: GoogleFonts.openSans().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
    bodyMedium: GoogleFonts.openSans().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
    bodySmall: GoogleFonts.openSans().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.5)),

    labelLarge: GoogleFonts.openSans().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: GoogleFonts.openSans().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
  );
  static TextTheme darktTextTheme = TextTheme(
    headlineLarge: GoogleFonts.openSans().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: GoogleFonts.openSans().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: GoogleFonts.openSans().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
//title
    titleLarge: GoogleFonts.openSans().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: GoogleFonts.openSans().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: GoogleFonts.openSans().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),
    //bodylarge
    bodyLarge: GoogleFonts.openSans().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: GoogleFonts.openSans().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: GoogleFonts.openSans().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.white.withOpacity(0.5)),

    labelLarge: GoogleFonts.openSans().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: GoogleFonts.openSans().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.5)),
  );
}
