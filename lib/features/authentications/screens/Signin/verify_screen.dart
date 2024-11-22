import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:nest_heven/common/widgets/success_screen/success_screen.dart';
import 'package:nest_heven/features/authentications/screens/Login/login.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/constants/text_string.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            children: [
              Lottie.asset("assets/videos/emailverification.json",
                  width: NheloerFunctions.screenWidth() * 0.8),
              const SizedBox(
                height: NSizes.spaceBTWsections,
              ),
              Text(
                NTexts.yourAccounVerified,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBTWItems,
              ),
              Text(
                NTexts.emailverifysub,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBTWItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const SuccessScreen()),
                    child: const Text(NTexts.continueText)),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: const Text(NTexts.resendEmail)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
