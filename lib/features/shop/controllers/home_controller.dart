import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomController extends GetxController {
  static HomController get instence => Get.find();

  final carouselCurrentIdnex = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrentIdnex.value = index;
  }
}
