import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/constants/text_string.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class LoginFormDivider extends StatelessWidget {
  const LoginFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = NheloerFunctions.IsdarkMode(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? NColors.darkgery : NColors.gery,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          NTexts.orSignInwith,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? NColors.darkgery : NColors.gery,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}
