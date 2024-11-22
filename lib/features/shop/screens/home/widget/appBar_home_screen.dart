
import 'package:flutter/material.dart';
import 'package:nest_heven/common/widgets/appBar/appbar.dart';
import 'package:nest_heven/common/widgets/products/cart_menu.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/text_string.dart';

class NHomeAppBar extends StatelessWidget {
  const NHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(NTexts.homeAppBArTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: NColors.gery)),
          Text(NTexts.homeAppbarSubtitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: NColors.textWhite))
        ],
      ),
      actions: [
         NCounterIcon(iconColor: NColors.textWhite, onPressedl: (){},)
      ],
    );
  }
}

