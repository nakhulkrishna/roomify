import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/sizes.dart';

class NRoundedImage extends StatelessWidget {
  const NRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadious = true,
    this.border,
    this.backgroundColor = NColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
     this.onPressed,
    this.borderRadious = NSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadious;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;

  final double borderRadious;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadious)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadious),
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
