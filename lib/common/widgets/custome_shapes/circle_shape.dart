import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/colors.dart';

class NcircleWidgets extends StatelessWidget {
  const NcircleWidgets({
    super.key,
    this.height = 400,
    this.width = 400,
    this.padding = 400,
    this.radius = 100,
    this.child,
    this.colors = NColors.textWhite,
    this.margin,
  });

  final double? height;
  final double? width;
  final double padding;
  final double radius;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: colors, borderRadius: BorderRadius.circular(radius)),
    );
  }
}
