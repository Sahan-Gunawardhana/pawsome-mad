import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppHelperMethods{
  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(BuildContext context){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(BuildContext context){
    return MediaQuery.of(Get.context!).size.width;
  }
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }
}