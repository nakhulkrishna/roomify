import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/sizes.dart';

class NverticalImageText extends StatelessWidget {
  const NverticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = NColors.light,
    this.background = NColors.light,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? background;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: NSizes.spaceBTWItems),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(NSizes.sm),
              decoration: BoxDecoration(
                  color: background, borderRadius: BorderRadius.circular(100)),
            ),
            const SizedBox(
              height: NSizes.spaceBTWItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
