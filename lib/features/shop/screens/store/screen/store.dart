import 'package:flutter/material.dart';
import 'package:nest_heven/common/widgets/appBar/appbar.dart';
import 'package:nest_heven/common/widgets/custome_shapes/containers/NroundedContainer.dart';
import 'package:nest_heven/common/widgets/custome_shapes/containers/searchbar.dart';
import 'package:nest_heven/common/widgets/images/circular_image.dart';
import 'package:nest_heven/common/widgets/products/cart_menu.dart';
import 'package:nest_heven/common/widgets/text/SectionHeading.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/image_strings.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NheloerFunctions.IsdarkMode(context);
    return Scaffold(
      appBar: NAppBar(
        title: const Text("Store"),
        actions: [
          NCounterIcon(
              iconColor: dark ? Colors.white : NColors.dark, onPressedl: () {}),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? NColors.black : NColors.textWhite,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(NSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: NSizes.spaceBTWItems,
                      ),
                      const NsearchBarContainer(
                        text: "Search in Store",
                        showborder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: NSizes.spaceBTWsections,
                      ),
                      SectionHEading(
                        title: "Featured Brands",
                        textColor: dark ? NColors.textWhite : NColors.black,
                        onPressed: () {},
                      ),
                      const NRoundedContainer(
                        padding: EdgeInsets.all(NSizes.sm),
                        showBorder: true,
                        backgourndColor: Colors.transparent,
                        child: const Row(
                          children: [
                            NcirculerImage(
                              images: NImages.productsIcons,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
