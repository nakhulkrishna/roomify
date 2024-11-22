import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nest_heven/utils/constants/colors.dart';

class NElevetedButtonTheme {
  NElevetedButtonTheme._();

  static final lightElevetedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: NColors.light,
          backgroundColor: NColors.primary,
          disabledBackgroundColor: NColors.gery,
          disabledForegroundColor: NColors.gery,
          side: const BorderSide(color: NColors.primary),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: GoogleFonts.openSans(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));
  static final darkElevetedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: NColors.primary,
          disabledBackgroundColor: NColors.gery,
          disabledForegroundColor: NColors.gery,
          side: const BorderSide(color: NColors.primary),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: GoogleFonts.openSans(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));
}
