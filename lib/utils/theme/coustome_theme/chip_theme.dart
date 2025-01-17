import 'package:flutter/material.dart';

class NChipTheme {
  NChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: Colors.blue,
      checkmarkColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12));

  static ChipThemeData darkChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.white),
      selectedColor: Colors.blue,
      checkmarkColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12));
}
