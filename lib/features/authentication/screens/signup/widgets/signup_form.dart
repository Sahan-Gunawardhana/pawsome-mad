import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawsome_v2/features/authentication/controllers/signup/singup_controller.dart';
import 'package:pawsome_v2/features/authentication/screens/login/login.dart';
import 'package:pawsome_v2/utils/validators/validation.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firsName,
                    validator: (value) =>
                        CusValidators.validateText("First Name", value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: AppString.signupfNameTextField,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: TextFormField(
                    validator: (value) =>
                        CusValidators.validateText("Last Name", value),
                    controller: controller.lastName,
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: AppString.signuplNameTextField,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              expands: false,
              controller: controller.email,
              validator: (value) => CusValidators.validateEmail(value),
              decoration: const InputDecoration(
                  labelText: AppString.signupEmail,
                  prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              controller: controller.phone,
              validator: (value) => CusValidators.validatePhoneNumber(value),
              expands: false,
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: const InputDecoration(
                  labelText: AppString.signupTele,
                  prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              controller: controller.username,
              validator: (value) =>
                  CusValidators.validateText("User name", value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: AppString.signupUserNameTextField,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: 24,
            ),
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => CusValidators.validatePassword(value),
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
            const SizedBox(
              height: 24,
            ),
            //terms and conditions checkbox
            Row(
              children: [
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Obx(
                      () => Checkbox(
                        value: controller.privacyPolicy.value,
                        onChanged: (value) => controller.privacyPolicy.toggle(),
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                      ),
                    )),
                SizedBox(
                  width: 16,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: '${AppString.agreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                    text: AppString.privaryPolicy,
                    style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: isDarkMode
                            ? AppColors.secondaryDark
                            : AppColors.secondaryLight,
                        decoration: TextDecoration.underline,
                        decorationColor: isDarkMode
                            ? AppColors.secondaryDark
                            : AppColors.secondaryLight),
                  ),
                  TextSpan(
                      text: ' ${AppString.and} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                    text: AppString.tOs,
                    style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: isDarkMode
                            ? AppColors.secondaryDark
                            : AppColors.secondaryLight,
                        decoration: TextDecoration.underline,
                        decorationColor: isDarkMode
                            ? AppColors.secondaryDark
                            : AppColors.secondaryLight),
                  ),
                ]))
              ],
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(()=> LoginScreen()),
                  child: const Text(AppString.signupButtonText)),
            )
          ],
        ));
  }
}
