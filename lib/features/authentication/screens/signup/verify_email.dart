import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/common/widgets/success_screen/success_screen.dart';
import 'package:pawsome_v2/features/authentication/screens/login/login.dart';
import 'package:pawsome_v2/features/shop/screens/home/home.dart';
import 'package:pawsome_v2/navigation_menu.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';
import 'package:pawsome_v2/utils/constants/text_strings.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Image
              Image(
                image: AssetImage(AppImages.emailVerification),
                width: AppHelperMethods.screenWidth(context) * 0.7,
              ),
              SizedBox(
                height: 24,
              ),
              // Title and sub title
              Text(
                AppString.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "PlaceHolder@email.com",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                AppString.verifyEmailDesc,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen(
                            //success screen and the parameters for the requirements
                            imageTitle: AppImages.success1,
                            title: AppString.successOne,
                            subtitle: AppString.successTwo,
                            onPressed: () => Get.offAll(() => const NavigationMenu()),
                          )),
                      style: ElevatedButton.styleFrom(
                        elevation: 6, // Set desired elevation here
                      ),
                      child: const Text(AppString.emailContinue))),
              SizedBox(
                height: 24,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    AppString.resend,
                    style: Theme.of(context).textTheme.labelLarge,
                  ))
              //Buttons
            ],
          ),
        ),
      ),
    );
  }
}
