import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pawsome_v2/common/widgets/loaders/loaders.dart';
import 'package:pawsome_v2/data/repositories/authentication/authentication_repository.dart';
import 'package:pawsome_v2/navigation_menu.dart';
import 'package:pawsome_v2/utils/helpers/network_manager.dart';
import 'package:http/http.dart' as http; // Import the http package

import '../../../../utils/alerts/full_screen_pop_up.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final hidePassword = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final remember = false.obs;

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final deviceStorage = GetStorage();

  // Ensure you have the http package imported and use it
  final httpClient = http.Client();

  // Updated loginUser method
  Future<String?> loginUser({
    required TextEditingController email,
    required String password,
  }) async {
    const String baseUrl = "http://pawsomelk.xyz/api/login";
    try {
      final response = await httpClient.post(
        Uri.parse(baseUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "email": email.text.trim(),
          "password": password.trim(),
          "user_type": "user"
        }),
      );

      final data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        // Check if the response contains the necessary keys
        if (data.containsKey("token") &&
            data.containsKey("user") &&
            data["user"] is Map<String, dynamic>) {
          final userData = data["user"];
          final token = data["token"];

          // Save the user data and token in local storage
          deviceStorage.write("authToken", token);
          deviceStorage.write("userId", userData["id"]);
          deviceStorage.write("name", userData["name"]);
          deviceStorage.write("email", userData["email"]);

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

  // Updated login controller method
  Future<void> login() async {
    try {
      final isConnected = await NetworkManger.instance.isConnected();
      if (!isConnected) {
        AppLoaders.errorSnackBar(
            title: "No internet",
            message: "Please check your internet connection.");
        return;
      }

      if (!loginFormKey.currentState!.validate()) return;

      // Pass only the text values, not the controllers
      final result = await loginUser(
        email: email,  // Pass email.text instead of email controller
        password: password.text.trim(),  // Pass password.text instead of password controller
      );

      if (result == "Login successful") {
        final authToken = deviceStorage.read("authToken");
        final userId = deviceStorage.read("userId");
        final name = deviceStorage.read("name");
        final email = deviceStorage.read("email");

        if (authToken != null && userId != null && name != null && email != null) {
          AppLoaders.successSnackBar(
              title: "Logged In Successfully", message: "You are now logged in");
          Get.offAll(() => NavigationMenu());
        } else {
          AppLoaders.errorSnackBar(
              title: "Login Failed", message: "No token or user ID found.");
          FullScreenPopUp.stopLoading();
        }
      } else {
        AppLoaders.errorSnackBar(
            title: "Login Failed", message: result ?? "Unknown error");
        FullScreenPopUp.stopLoading();
      }
    } catch (e) {
      FullScreenPopUp.stopLoading();
      AppLoaders.errorSnackBar(
          title: "Whoops! Something Went Wrong", message: e.toString());
    }
  }

}
