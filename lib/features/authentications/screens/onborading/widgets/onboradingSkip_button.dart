import 'package:flutter/material.dart';
import 'package:nest_heven/features/authentications/controllers.onboarding/onboardingcontroller.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/device/device_utilitys.dart';

class OnboradingSkip extends StatelessWidget {
  const OnboradingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: NSizes.defaultSpace,
        top: NdeviceUtils.getAppbarHeight(),
        child: TextButton(
            onPressed: () => OnboardingController.instance.skipPage(),
            child: const Text("Skip")));
  }
}
