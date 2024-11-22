import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nest_heven/utils/constants/colors.dart';

class NOutLinedButtonTheme {
  NOutLinedButtonTheme._();
  static final lightOutLinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        side: const BorderSide(color: NColors.gery),
        textStyle: GoogleFonts.openSans(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
  );
  static final darkOutLinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        side: const BorderSide(color: NColors.light),
        textStyle: GoogleFonts.openSans(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
  );
}
