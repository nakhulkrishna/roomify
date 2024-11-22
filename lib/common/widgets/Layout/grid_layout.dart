import 'package:flutter/material.dart';
import 'package:nest_heven/common/widgets/products_card/products_cards_veritical.dart';
import 'package:nest_heven/utils/constants/sizes.dart';

class NGridLayout extends StatelessWidget {
  const NGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisEtent = 262,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisEtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: NSizes.gridViewSpacing,
            mainAxisExtent: mainAxisEtent,
            crossAxisSpacing: NSizes.gridViewSpacing),
        itemCount: itemCount,
        itemBuilder: itemBuilder);
  }
}
