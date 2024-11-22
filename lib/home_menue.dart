import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nest_heven/features/shop/screens/home/screen/home.dart';
import 'package:nest_heven/features/shop/screens/store/screen/store.dart';
import 'package:nest_heven/utils/constants/colors.dart';
import 'package:nest_heven/utils/helpers/helpperFucntion.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = NheloerFunctions.IsdarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: darkMode ? NColors.black : NColors.textWhite,
          selectedIndex: controller.selectedIndex.value,
          indicatorColor: darkMode
              ? NColors.textWhite.withOpacity(0.1)
              : NColors.black.withOpacity(0.1),
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Whislit"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screen = [
    const HomeScreen(),
   const  Store(),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.red,
    ),
  ];
}
