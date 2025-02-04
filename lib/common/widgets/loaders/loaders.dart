import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';

class AppLoaders {
  static warningSnackBar({required title, message = '', }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColors.errorContainerLight,
      colorText: AppColors.onErrorContainerLight,
      duration: Duration(seconds: 3),
      isDismissible: true,
      margin: EdgeInsets.all(16),
      icon: const Icon(
        Icons.warning,
        color: AppColors.onErrorContainerLight,
      ),
      shouldIconPulse: true,
    );
  }

  static void successSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColors.primaryContainerLight,
      colorText: AppColors.onPrimaryContainerLight,
      duration: Duration(seconds: duration),
      isDismissible: true,
      margin: EdgeInsets.all(16),
      icon: const Icon(
        Icons.check_circle_outline_rounded,
        color: AppColors.onPrimaryContainerLight,
      ),
    );
  }

  static void errorSnackBar({required title, message = '', duration = 10}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: AppColors.onErrorDark,
      duration: Duration(seconds: duration),
      isDismissible: true,
      margin: EdgeInsets.all(16),
      icon: const Icon(
        Icons.error,
        color: AppColors.onErrorDark,
      ),
    );
  }
}
