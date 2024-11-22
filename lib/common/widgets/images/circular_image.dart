import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/image_strings.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class NcirculerImage extends StatelessWidget {
  const NcirculerImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.images,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgorundColor,
    this.width = 56,
    this.height = 56,
    this.padding = NSizes.sm,
  });

  final BoxFit fit;
  final String images;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgorundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final dark = NheloerFunctions.IsdarkMode(context);
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: dark ? NColors.black : NColors.textWhite,
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        image: isNetworkImage
            ? NetworkImage(images)
            : AssetImage(images) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
