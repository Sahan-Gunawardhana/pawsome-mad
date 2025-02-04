import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/utils/helpers/network_manager.dart';

class GeneralBindings extends Bindings {

  @override
  void dependencies() {
    Get.put(NetworkManger());
  }
}