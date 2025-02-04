

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/features/authentication/screens/login/login.dart';
import 'package:pawsome_v2/features/authentication/screens/signup/signup.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void nextPage() {
    Get.offAll(const SignupScreen());
  }

}