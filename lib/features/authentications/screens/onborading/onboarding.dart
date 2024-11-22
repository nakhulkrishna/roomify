import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nest_heven/features/authentications/controllers.onboarding/onboardingcontroller.dart';
import 'package:nest_heven/features/authentications/screens/onborading/widgets/OnBoradingNextButton.dart';
import 'package:nest_heven/features/authentications/screens/onborading/widgets/onBorading_dot_navigation.dart';
import 'package:nest_heven/features/authentications/screens/onborading/widgets/onBorading_pages.dart';
import 'package:nest_heven/features/authentications/screens/onborading/widgets/onboradingSkip_button.dart';
import 'package:nest_heven/utils/constants/image_strings.dart';
import 'package:nest_heven/utils/constants/text_string.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onboarding_pages(
                image: NImages.onBoardingImage1,
                title: NTexts.onBoardingTitle1,
                subtitle: NTexts.onBoardingSubTitle1,
              ),
              onboarding_pages(
                image: NImages.onBoardingImage2,
                title: NTexts.onBoardingTitle2,
                subtitle: NTexts.onBoardingSubTitle2,
              ),
              onboarding_pages(
                image: NImages.onBoardingImage3,
                title: NTexts.onBoardingTitle3,
                subtitle: NTexts.onBoardingSubTitle3,
              )
            ],
          ),
          const OnboradingSkip(),
          const SmoothPageIndicatorWidget(),
          OnBoradingNextButton()
        ],
      ),
    );
  }
}
