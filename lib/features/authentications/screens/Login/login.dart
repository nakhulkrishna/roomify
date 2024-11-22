import 'package:flutter/material.dart';
import 'package:nest_heven/common/styles/Nspaceing_style.dart';
import 'package:nest_heven/features/authentications/screens/Login/widget/formDivider.dart';
import 'package:nest_heven/features/authentications/screens/Login/widget/login_form.dart';
import 'package:nest_heven/features/authentications/screens/Login/widget/login_header.dart';
import 'package:nest_heven/features/authentications/screens/Login/widget/social_button.dart';

import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/constants/text_string.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NheloerFunctions.IsdarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: NSpaceingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo , Titile & sub-titile
              LoginHeader(),
              LoginForm(),
              LoginFormDivider(
                dividerText: NTexts.orSignInwith,
              ),
              SizedBox(height: NSizes.spaceBTWsections),
              NSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
