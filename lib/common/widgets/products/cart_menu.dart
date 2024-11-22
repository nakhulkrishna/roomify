import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class NCounterIcon extends StatelessWidget {
  const NCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressedl,
  });

  final Color iconColor;
  final VoidCallback onPressedl;

  @override
  Widget build(BuildContext context) {
    final dark = NheloerFunctions.IsdarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressedl,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                color: dark ? NColors.light : NColors.dark,
                borderRadius: const BorderRadius.all(Radius.circular(100))),
            child: Center(
                child: Text("4",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: dark ? NColors.dark : NColors.light))),
          ),
        )
      ],
    );
  }
}
