import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/colors.dart';

class NShadowStyle {
  static final verticalProductsShadow = BoxShadow(
      color: NColors.darkgery.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
  static final horizontalProductsShadow = BoxShadow(
      color: NColors.darkgery.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
