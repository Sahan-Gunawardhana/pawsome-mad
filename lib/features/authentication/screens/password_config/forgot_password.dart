import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawsome_v2/features/authentication/screens/password_config/reset_password.dart';
import 'package:pawsome_v2/utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 24, top: 56, bottom: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Headin
            Text(AppString.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(
              height: 24,
            ),
            Text(
              AppString.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 48,
            ),
            //text field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: AppString.loginEmail,
                  prefixIcon: Icon(Iconsax.sms)),
            ),
            // submit button
            SizedBox(
              height: 24,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: Text(AppString.forgetPasswordSubmit)))
          ],
        ),
      ),
    );
  }
}
