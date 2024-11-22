import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nest_heven/features/authentications/screens/Login/widget/formDivider.dart';
import 'package:nest_heven/features/authentications/screens/Signin/verify_screen.dart';

import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/constants/text_string.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

import '../../Login/widget/social_button.dart';


class NSignUpForm extends StatelessWidget {
  const NSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NheloerFunctions.IsdarkMode(context);
    return Form(
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: NTexts.username),
                ),
              ),
              SizedBox(
                width: NSizes.spaceBTWinputField,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: NTexts.lastname),
                ),
              )
            ],
          ),
          const SizedBox(
            height: NSizes.spaceBTWinputField,
          ),
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: NTexts.username),
          ),
          const SizedBox(
            height: NSizes.spaceBTWinputField,
          ),
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct), labelText: NTexts.email),
          ),
          const SizedBox(
            height: NSizes.spaceBTWinputField,
          ),
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.call), labelText: NTexts.phone),
          ),
          const SizedBox(
            height: NSizes.spaceBTWinputField,
          ),
          const TextField(
            decoration: InputDecoration(
                suffix: Icon(Iconsax.eye_slash),
                prefixIcon: Icon(Iconsax.password_check),
                labelText: NTexts.password),
          ),
          const SizedBox(
            height: NSizes.spaceBTWsections,
          ),
          Row(
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(
                width: NSizes.spaceBTWItems,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: NTexts.iAgrredto,
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: NTexts.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            decoration: TextDecoration.underline,
                            color: dark ? NColors.light : NColors.primary)),
                    TextSpan(
                        text: NTexts.and,
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: NTexts.tremsofuse,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            decoration: TextDecoration.underline,
                            color: dark ? NColors.light : NColors.primary))
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: NSizes.spaceBTWsections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(()=> VerifyScreen()), child: const Text(NTexts.createAccount)),
                
          ),
          const SizedBox(
            height: NSizes.spaceBTWsections,
          ),
          const LoginFormDivider(
            dividerText: NTexts.orSignUpWith,
          ),
          const SizedBox(
            height: NSizes.spaceBTWsections,
          ),
          const NSocialButtons()
        ],
      ),
    );
  }
}
