import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/theme/coustome_theme/appbar_theme.dart';
import 'package:nest_heven/utils/theme/coustome_theme/bottomSheet_theme.dart';
import 'package:nest_heven/utils/theme/coustome_theme/checkBox_theme.dart';
import 'package:nest_heven/utils/theme/coustome_theme/chip_theme.dart';
import 'package:nest_heven/utils/theme/coustome_theme/eleveted_button_theme.dart';
import 'package:nest_heven/utils/theme/coustome_theme/outlinedbutton.dart';
import 'package:nest_heven/utils/theme/coustome_theme/textFormTheme.dart';
import 'package:nest_heven/utils/theme/coustome_theme/text_theme.dart';

class NappTheme {
  NappTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "opensans",
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      chipTheme: NChipTheme.lightChipTheme,
      checkboxTheme: NCheckBoxTheme.lightCheckBoxTheme,
      inputDecorationTheme: NTextFormTheme.lightTextFormTheme,
      outlinedButtonTheme: NOutLinedButtonTheme.lightOutLinedButtonTheme,
      textTheme: NTextTheme.lightTextTheme,
      appBarTheme: NAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: NBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: NElevetedButtonTheme.lightElevetedButtonTheme);
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "opensans",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: NColors.black,
    bottomSheetTheme: NBottomSheetTheme.darkBottomSheetTheme,
    appBarTheme: NAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: NElevetedButtonTheme.darkElevetedButtonTheme,
    textTheme: NTextTheme.darktTextTheme,
    checkboxTheme: NCheckBoxTheme.darkCheckBoxTheme,
    inputDecorationTheme: NTextFormTheme.darkTextFormTheme,
    outlinedButtonTheme: NOutLinedButtonTheme.darkOutLinedButtonTheme,
  );
}
