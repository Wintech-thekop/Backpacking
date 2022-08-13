import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double px) {
    double x = getScreenHeight() / px; // 844/200 => 4.22
    return getScreenHeight() / x;
  }

  static getWidth(double px) {
    double x = getScreenWidth() / px; // 844/200 => 4.22
    return getScreenWidth() / x;
  }

}
