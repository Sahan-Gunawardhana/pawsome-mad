import 'dart:convert';

import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:pawsome_v2/features/authentication/screens/login/login.dart';
import 'package:pawsome_v2/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //redirecting
  screenRedirect() async {
    //local storage
    deviceStorage.writeIfNull('firstTime', true);
    deviceStorage.read('firstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const LoginScreen());
  }

  /// sign in
  Future<String?> sendUserToBackend({
    required TextEditingController fName,
    required TextEditingController lName,
    required TextEditingController email,
    required String password,
  }) async {
    const String baseUrl =
        "http://pawsomelk.xyz/api/register";
    try {

      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "name": "${fName.text} ${lName.text}",
          "email": email.text,
          "password": password.trim(),
          "user_type": "user"
        }),
      );

      final data = jsonDecode(response.body);


      if (response.statusCode == 200) {

        if (data.isNotEmpty &&
            data.containsKey("token") &&
            data.containsKey("user")) {

          deviceStorage.write("authToken", data["token"]);
          deviceStorage.write("userId", data["user"]["id"]);
          deviceStorage.write("name", data["user"]["name"]);
          deviceStorage.write("email", data["user"]["email"]);

          return "Registration successful";
        } else {
          return "Invalid data received";
        }
      } else {
        return "Registration failed";
      }
    } catch (e) {
      return "Error: $e";
    }
  }

  Future<String?> loginUser({
    required TextEditingController email,
    required String password,
  }) async {
    const String baseUrl = "https://pawsomelk.xyz/api/login";
    try {
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "email": email.text.trim(),
          "password": password,
          "user_type": "user"
        }),
      );

      final data = jsonDecode(response.body);

      if (response.statusCode == 200) {

        if (data.isNotEmpty &&
            data.containsKey("token") &&
            data.containsKey("user")) {

          deviceStorage.write("authToken", data["token"]);
          deviceStorage.write("userId", data["user"]["id"]);
          deviceStorage.write("name", data["user"]["name"]);
          deviceStorage.write("email", data["user"]["email"]);

          return "Login successful";
        } else {
          return "Invalid data received";
        }
      } else if (response.statusCode == 401) {
        return data["message"] ?? "Invalid login credentials";
      } else {
        return "Login failed";
      }
    } catch (e) {
      return "Error: $e";
    }
  }


}
