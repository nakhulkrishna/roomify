import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class NCircularIcon extends StatelessWidget {
  const NCircularIcon({
    super.key,
    this.height = 40,
    this.width = 40,
    this.size = NSizes.lg,
    required this.icon,
    this.backgorund,
    required this.onPressed,
    this.colorIcon,
  });

  final double? height, width, size;
  final IconData icon;
  final Color? backgorund, colorIcon;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgorund != null
              ? backgorund
              : NheloerFunctions.IsdarkMode(context)
                  ? NColors.black.withOpacity(0.9)
                  : NColors.textWhite.withOpacity(0.9)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: colorIcon,
      ),
    );
  }
}
