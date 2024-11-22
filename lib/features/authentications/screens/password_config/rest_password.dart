import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:nest_heven/features/authentications/screens/Login/login.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/constants/text_string.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class RestPassword extends StatelessWidget {
  const RestPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.back, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Lottie.asset("assets/videos/resetpassword.json",
                width: NheloerFunctions.screenWidth() * 0.8),
            const SizedBox(
              height: NSizes.spaceBTWsections,
            ),
            Text(
              NTexts.passwordresettitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: NSizes.spaceBTWItems,
            ),
            Text(
              NTexts.passwordresetsubtitle,
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
                  child: const Text(NTexts.done)),
            ),
            const SizedBox(
              height: NSizes.spaceBTWItems,
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
    );
  }
}
