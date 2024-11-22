import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nest_heven/utils/constants/sizes.dart';
import 'package:nest_heven/utils/device/device_utilitys.dart';

class NAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: NSizes.md),
      child: AppBar(
          title: title,
          actions: actions,
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () => Get.back,
                  icon: const Icon(Iconsax.arrow_left))
              : leadingIcon != null
                  ? IconButton(
                      onPressed: () => Get.back, icon: Icon(leadingIcon))
                  : null),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(NdeviceUtils.getAppbarHeight());
}
