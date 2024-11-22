import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class onboarding_pages extends StatelessWidget {
  const onboarding_pages({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(NSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            image,
            width: NheloerFunctions.screenWidth() * 0.8,
            height: NheloerFunctions.screenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: NSizes.spaceBTWItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
