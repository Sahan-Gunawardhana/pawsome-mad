import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import '../../personalization/models/user_model.dart';

class HomePageController extends GetxController {
  static HomePageController get instance => Get.find();

  Rx<UserModel> user = UserModel.empty().obs;

  final deviceStorage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    loadUserData();
  }

  /// Loads user data from local storage
  void loadUserData() async {
    String? name = deviceStorage.read("name");
    String? email = deviceStorage.read("email");
    String? id = deviceStorage.read("userId");
    String? token = deviceStorage.read("authToken");

    // Ensure that none of the values are empty before setting the user data
    if (name != null && email != null && id != null && token != null) {
      user.value = UserModel(
        id: id,
        email: email,
        name: name,
        authToken: token
      );
    }
  }
}
