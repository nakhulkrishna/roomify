import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nest_heven/common/widgets/custome_shapes/circle_shape.dart';
import 'package:nest_heven/common/widgets/images/carousel_image.dart';
import 'package:nest_heven/features/shop/controllers/home_controller.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/sizes.dart';

import '../../../../../utils/constants/image_strings.dart';

class NPromoSlider extends StatelessWidget {
  const NPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => NRoundedImage(imageUrl: url)).toList(),
          // items: const [
          //   NRoundedImage(
          //     imageUrl: NImages.banner1,
          //   ),
          //   NRoundedImage(
          //     imageUrl: NImages.banner2,
          //   ),
          //   NRoundedImage(
          //     imageUrl: NImages.banner3,
          //   ),
          // ],
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(
          height: NSizes.spaceBTWItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  NcircleWidgets(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    colors: controller.carouselCurrentIdnex.value == i
                        ? NColors.primary
                        : NColors.gery,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
