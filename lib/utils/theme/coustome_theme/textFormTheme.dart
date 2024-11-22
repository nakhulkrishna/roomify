import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NTextFormTheme {
  NTextFormTheme._();

  static InputDecorationTheme lightTextFormTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle:
        GoogleFonts.openSans().copyWith(fontSize: 14, color: Colors.black),
    hintStyle:
        GoogleFonts.openSans().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: GoogleFonts.openSans().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        GoogleFonts.openSans().copyWith(fontSize: 14, color: Colors.black),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black12),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
  static InputDecorationTheme darkTextFormTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle:
        GoogleFonts.openSans().copyWith(fontSize: 14, color: Colors.white),
    hintStyle:
        GoogleFonts.openSans().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: GoogleFonts.openSans().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        GoogleFonts.openSans().copyWith(fontSize: 14, color: Colors.white),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}
