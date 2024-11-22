import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nest_heven/features/authentications/screens/password_config/rest_password.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/constants/text_string.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(NSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              NTexts.forgetPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: NSizes.spaceBTWItems,
            ),
            Text(
              NTexts.forgetPasswordsubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: NSizes.spaceBTWsections * 2,
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: NTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: NSizes.spaceBTWsections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const RestPassword()),
                    child: const Text(NTexts.submit)))
          ],
        ),
      ),
    );
  }
}
