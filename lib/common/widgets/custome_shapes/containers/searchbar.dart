import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/device/device_utilitys.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class NsearchBarContainer extends StatelessWidget {
  const NsearchBarContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showborder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: NSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showborder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = NheloerFunctions.IsdarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        width: NdeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(NSizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? NColors.dark
                    : NColors.light
                : Colors.transparent,
            border: showborder ? Border.all(color: NColors.gery) : null,
            borderRadius: BorderRadius.circular(NSizes.cardRadiousLg)),
        child: Row(
          children: [
            Icon(
              icon,
              color: NColors.darkergray,
            ),
            const SizedBox(
              width: NSizes.spaceBTWItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
