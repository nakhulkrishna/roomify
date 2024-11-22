import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nest_heven/features/authentications/screens/Login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();

  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(int index) => currentPageIndex.value = index;

  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index.toDouble()); // Convert index to double
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
      print("next button called");
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2); // jumpToPage uses an int, so no change here
  }
}
