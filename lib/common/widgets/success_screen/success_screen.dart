import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:nest_heven/common/styles/Nspaceing_style.dart';
import 'package:nest_heven/features/authentications/screens/Login/login.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/constants/text_string.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: NSpaceingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Lottie.asset("assets/    videos/    secondVerified.json",
                  width: NheloerFunctions.screenWidth() * 0.8),
              const SizedBox(
                height: NSizes.spaceBTWsections,
              ),
              Text(
                NTexts.yourAccountCreated,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBTWItems,
              ),
              Text(
                NTexts.yourAccountCreatedSubtitile,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBTWItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: const Text(NTexts.continueText)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
