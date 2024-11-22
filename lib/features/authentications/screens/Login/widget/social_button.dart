import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/image_strings.dart';
import 'package:nest_heven/utils/constants/sizes.dart';

class NSocialButtons extends StatelessWidget {
  const NSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: NColors.gery),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: NSizes.iconMd,
                  height: NSizes.iconMd,
                  image: AssetImage(NImages.google))),
        ),
        const SizedBox(
          width: NSizes.spaceBTWItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: NColors.gery),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: NSizes.iconMd,
                  height: NSizes.iconMd,
                  image: AssetImage(NImages.facebook))),
        )
      ],
    );
  }
}
