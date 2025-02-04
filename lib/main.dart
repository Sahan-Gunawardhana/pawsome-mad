
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';
import 'package:pawsome_v2/app.dart';

import 'data/repositories/authentication/authentication_repository.dart';


//entry point
Future<void> main() async {
  // Add widgets binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // Local storage
  await GetStorage.init();

  // Native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //TODO: Firebase

  Get.put(AuthenticationRepository());

  runApp(const App());
}
