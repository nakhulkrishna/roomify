import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nest_heven/common/styles/nshadow_style.dart';
import 'package:nest_heven/common/widgets/Icons/n_Circular_Icons.dart';
import 'package:nest_heven/common/widgets/custome_shapes/containers/NroundedContainer.dart';
import 'package:nest_heven/common/widgets/images/carousel_image.dart';
import 'package:nest_heven/common/widgets/products_card/products_title_text.dart';
import 'package:nest_heven/common/widgets/text/price_text.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/image_strings.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class NProductsCardVerital extends StatelessWidget {
  const NProductsCardVerital({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NheloerFunctions.IsdarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [NShadowStyle.verticalProductsShadow],
            borderRadius: BorderRadius.circular(NSizes.productImageradious),
            color: dark ? NColors.darkergray : NColors.textWhite),
        child: Column(
          children: [
            NRoundedContainer(
              backgourndColor: dark ? NColors.dark : NColors.light,
              height: 180,
              padding: const EdgeInsets.all(NSizes.sm),
              child: Stack(
                children: [
                  const NRoundedImage(
                    imageUrl: NImages.products1,
                    applyImageRadious: true,
                  ),
                  Positioned(
                    top: 12,
                    left: 5,
                    child: NRoundedContainer(
                      padding: const EdgeInsets.symmetric(
                          vertical: NSizes.xs, horizontal: NSizes.xs),
                      radius: NSizes.sm,
                      backgourndColor: NColors.secondary.withOpacity(0.8),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: NColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 5,
                      right: 5,
                      child: NCircularIcon(
                        icon: Iconsax.heart5,
                        onPressed: () {},
                        colorIcon: Colors.red,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: NSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductsTitleText(
                    title: "Maroon wood Sofa",
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: NSizes.spaceBTWItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "WakeFit",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: NSizes.xs / 2,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: NColors.primary,
                        size: NSizes.iconxs,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: NSizes.sm),
                  child: const ProductsPriceText(
                    price: '35,000',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: NColors.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(NSizes.cardRadiousMd),
                        bottomRight:
                            Radius.circular(NSizes.productImageradious)),
                  ),
                  child: const SizedBox(
                      width: NSizes.iconLg * 1.2,
                      height: NSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: NColors.textWhite,
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
