import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nest_heven/features/authentications/screens/Signin/signin.dart';
import 'package:nest_heven/features/authentications/screens/password_config/forget_password.dart';
import 'package:nest_heven/home_menue.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/constants/text_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: NSizes.spaceBTWsections),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: NTexts.email),
            ),
            const SizedBox(height: NSizes.spaceBTWinputField),
            const TextField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Iconsax.eye_slash),
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: NTexts.password),
            ),
            const SizedBox(height: NSizes.spaceBTWinputField / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (Value) {}),
                    const Text(NTexts.remeberMe)
                  ],
                ),
                TextButton(
                    onPressed: () => Get.to(() => ForgetPassword()),
                    child: const Text(NTexts.forgetPassword))
              ],
            ),
            const SizedBox(
              height: NSizes.spaceBTWsections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => MyNavigationBar()),
                child: const Text(NTexts.signin),
              ),
            ),
            const SizedBox(
              height: NSizes.spaceBTWItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SigninScreen()),
                child: const Text(NTexts.createAccount),
              ),
            ),
            const SizedBox(
              height: NSizes.spaceBTWsections,
            ),
          ],
        ),
      ),
    );
  }
}
