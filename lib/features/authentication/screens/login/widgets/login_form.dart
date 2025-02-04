import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawsome_v2/features/authentication/controllers/login/login_controller.dart';
import 'package:pawsome_v2/features/authentication/screens/password_config/forgot_password.dart';
import 'package:pawsome_v2/features/authentication/screens/signup/signup.dart';
import 'package:pawsome_v2/features/shop/screens/home/home.dart';
import 'package:pawsome_v2/utils/validators/validation.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
        key: controller.loginFormKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) => CusValidators.validateEmail(value),
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.sms),
                  labelText: AppString.loginEmail),
            ),
            SizedBox(
              height: 24,
            ),
            Obx(
              () => TextFormField(
                controller: controller.password,
                expands: false,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                    labelText: AppString.signupPasswordTextField,
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                        onPressed: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                        icon: Icon(controller.hidePassword.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye))),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //remember me
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Obx(
                        () => Checkbox(
                          value: controller.remember.value,
                          onChanged: (value) {
                            controller.remember.value =
                                value ?? false; // Set the value directly
                          },
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                        ),
                      ),
                    ),
                    Text(AppString.rememberMe,
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
                //forgot password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()),
                  child: Text(
                    AppString.forgtPassword,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(HomeScreen()),
                child: Text(AppString.loginButtonText),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppString.loginRedirectToSignUp,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextButton(
                    onPressed: () => Get.to(() => SignupScreen()),
                    child: Text(
                      AppString.loginRedirectToSignClickText,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? AppColors.secondaryDark
                                    : AppColors.secondaryLight,
                          ),
                    )),
              ],
            )
          ],
        ));
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.isDarkMode,
    required this.dividerText,
  });

  final bool isDarkMode;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: isDarkMode
              ? AppColors.onBackgroundDark
              : AppColors.onBackgroundLight,
          thickness: 0.5,
          indent: 55,
          endIndent: 5,
        )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Flexible(
            child: Divider(
          color: isDarkMode
              ? AppColors.onBackgroundDark
              : AppColors.onBackgroundLight,
          thickness: 0.5,
          indent: 5,
          endIndent: 55,
        ))
      ],
    );
  }
}

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // First Icon Container
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : AppColors.onBackgroundLight,
              ),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: 24,
              height: 24,
              image: AssetImage(AppImages.google),
            ),
          ),
        ),
        const SizedBox(width: 16),
        // Second Icon Container
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : AppColors.onBackgroundLight,
              ),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: 28,
              height: 28,
              image: AssetImage(AppImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
