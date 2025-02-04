import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pawsome_v2/common/widgets/loaders/loaders.dart';
import 'package:pawsome_v2/common/widgets/success_screen/success_screen.dart';
import 'package:pawsome_v2/data/repositories/authentication/authentication_repository.dart';
import 'package:pawsome_v2/navigation_menu.dart';
import 'package:pawsome_v2/utils/alerts/full_screen_pop_up.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';
import 'package:pawsome_v2/utils/helpers/network_manager.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final firsName = TextEditingController();
  final hidePassword = true.obs;
  var privacyPolicy = false.obs;
  final lastName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final username = TextEditingController();
  final phone = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final storage = GetStorage();

  Future<void> signup() async {
    try {
      final isConnected = await NetworkManger.instance.isConnected();
      if (!isConnected) {
        AppLoaders.errorSnackBar(
            title: "No internet",
            message: "Please check your internet connection.");
        return;
      }

      // Form validation check - stop if validation fails
      if (!signupFormKey.currentState!.validate()) return;

      // Register users
      final result = await AuthenticationRepository.instance.sendUserToBackend(
        fName: firsName,
        lName: lastName,
        email: email,
        password: password.text.trim(),
      );

      if (result != null && result == "Registration successful") {
        // Move to the verify screen after successful registration
        storage.write('firstTime', false);
        Get.to(() => SuccessScreen(
              imageTitle: AppImages.success3,
              title: "Account Created",
              subtitle: "You are now registered at PawSome",
              onPressed: () => Get.offAll(() => NavigationMenu()),
            ));
      } else {
        AppLoaders.errorSnackBar(
            title: "Registration Failed", message: result ?? "Unknown error");
      }
    } catch (e) {
      FullScreenPopUp.stopLoading();
      AppLoaders.errorSnackBar(
          title: "Whoops! Something Went Wrong", message: e.toString());
    }
  }
}
