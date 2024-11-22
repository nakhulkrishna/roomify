import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nest_heven/common/widgets/Layout/grid_layout.dart';
import 'package:nest_heven/common/widgets/custome_shapes/circle_shape.dart';
import 'package:nest_heven/common/widgets/custome_shapes/containers/NPraimaryHeaderContainer.dart';
import 'package:nest_heven/common/widgets/custome_shapes/containers/searchbar.dart';
import 'package:nest_heven/common/widgets/image_text_widge/image_digets.dart';
import 'package:nest_heven/common/widgets/images/carousel_image.dart';
import 'package:nest_heven/common/widgets/products_card/products_cards_veritical.dart';
import 'package:nest_heven/common/widgets/text/SectionHeading.dart';
import 'package:nest_heven/features/shop/screens/home/widget/appBar_home_screen.dart';
import 'package:nest_heven/features/shop/screens/home/widget/home_categorie.dart';
import 'package:nest_heven/features/shop/screens/home/widget/promo.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/image_strings.dart';
import 'package:nest_heven/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const NPrimaryHeaderContainer(
            child: Column(
              children: [
                NHomeAppBar(),
                SizedBox(
                  height: NSizes.spaceBTWsections,
                ),
                NsearchBarContainer(
                  text: 'Search in Store',
                ),
                SizedBox(
                  height: NSizes.spaceBTWsections,
                ),
                Padding(
                  padding: EdgeInsets.only(left: NSizes.defaultSpace),
                  child: Column(
                    children: [
                      SectionHEading(
                        title: 'Popular Categories',
                        showButton: false,
                      ),
                      SizedBox(
                        height: NSizes.spaceBTWsections,
                      ),
                      homeCategories()
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(NSizes.defaultSpace),
            child: Column(
              children: [
                const NPromoSlider(
                  banners: [NImages.banner1, NImages.banner2, NImages.banner3],
                ),
                const SizedBox(
                  height: NSizes.spaceBTWsections,
                ),
                NGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const NProductsCardVerital(),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
