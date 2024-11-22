import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/sizes.dart';

class NRoundedContainer extends StatelessWidget {
  const NRoundedContainer(
      {super.key,
      this.height,
      this.width,
      this.radius = NSizes.cardRadiousLg,
      this.child,
      this.showBorder = false,
      this.backgourndColor = NColors.textWhite,
      this.borderColor = NColors.borderPrimary,
      this.padding,
      this.margin});

  final double? height, width;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color backgourndColor, borderColor;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgourndColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
