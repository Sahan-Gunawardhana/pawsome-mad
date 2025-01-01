import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawsome_v2/features/authentication/screens/password_config/forgot_password.dart';
import 'package:pawsome_v2/features/authentication/screens/signup/signup.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.sms), labelText: AppString.loginEmail),
        ),
        SizedBox(
          height: 24,
        ),
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: AppString.loginPasswordTextField,
              suffixIcon: Icon(Iconsax.eye_slash)),
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
                  child: Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.green,
                    checkColor: Colors.white,
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
            onPressed: () {},
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
                onPressed: () => Get.to(() => const SignupScreen()),
                child: Text(
                  AppString.loginRedirectToSignClickText,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).brightness == Brightness.dark
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
