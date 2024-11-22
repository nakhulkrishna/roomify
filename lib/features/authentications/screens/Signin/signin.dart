import 'package:flutter/material.dart';

import 'package:nest_heven/features/authentications/screens/Signin/widgets/NSignUpform.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/constants/text_string.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                NTexts.signinTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: NSizes.spaceBTWsections,
              ),
              const NSignUpForm()
            ],
          ),
        ),
      ),
    );
  }
}

