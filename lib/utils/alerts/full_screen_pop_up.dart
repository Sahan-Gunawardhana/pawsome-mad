import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/common/widgets/loaders/animation_loader.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class FullScreenPopUp {
  static void openPopUp(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
              canPop: false,
              child: Container(
                color: AppHelperMethods.isDarkMode(Get.context!)
                    ? AppColors.surfaceDark
                    : AppColors.surfaceLight,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    AnimationLoader(text: text, animation: animation)
                  ],
                ),
              ),
            ));
  }
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
