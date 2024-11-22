import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/image_strings.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/constants/text_string.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NheloerFunctions.IsdarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? NImages.lightappLogolibarary : NImages.lightappLogolibarary),
        ),
        Text(
          NTexts.logintitile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: NSizes.sm,
        ),
        Text(NTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
