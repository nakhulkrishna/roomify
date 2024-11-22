import 'package:flutter/material.dart';
import 'package:nest_heven/features/authentications/controllers.onboarding/onboardingcontroller.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/device/device_utilitys.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorWidget extends StatelessWidget {
  const SmoothPageIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = NheloerFunctions.IsdarkMode(context);
    return Positioned(
      bottom: NdeviceUtils.getbottomNavigationBarHeight() + 25,
      left: NSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? NColors.light : NColors.dark,
          dotHeight: 6,
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
