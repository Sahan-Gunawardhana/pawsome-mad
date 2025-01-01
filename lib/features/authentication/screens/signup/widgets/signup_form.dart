import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class signupForm extends StatelessWidget {
  const signupForm({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
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
              decoration: const InputDecoration(
                  labelText: AppString.signupEmail,
                  prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: AppString.signupTele, prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: AppString.signupPasswordTextField,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: AppString.signupUserNameTextField,
                  prefixIcon: Icon(Iconsax.user_edit)),
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
                    child: Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                      checkColor: Colors.white,
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
                  onPressed: () {}, child: const Text(AppString.signupButtonText)),
            )
          ],
        ));
  }
}
