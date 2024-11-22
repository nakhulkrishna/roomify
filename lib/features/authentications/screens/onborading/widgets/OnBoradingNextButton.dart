import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nest_heven/features/authentications/controllers.onboarding/onboardingcontroller.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/device/device_utilitys.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class OnBoradingNextButton extends StatelessWidget {
  const OnBoradingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NheloerFunctions.IsdarkMode(context);
    return Positioned(
        right: NSizes.defaultSpace,
        bottom: NdeviceUtils.getbottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnboardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? NColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
