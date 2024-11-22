import 'package:flutter/material.dart';
import 'package:nest_heven/utils/constants/colors.dart';

class SectionHEading extends StatelessWidget {
  const SectionHEading({
    super.key,
    required this.title,
    this.butttonTitle = "View all",
    this.showButton = true,
    this.textColor = NColors.textWhite,
    this.onPressed,
  });

  final String title, butttonTitle;
  final bool showButton;
  final Color? textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showButton) TextButton(onPressed: () {}, child: Text(butttonTitle))
      ],
    );
  }
}
