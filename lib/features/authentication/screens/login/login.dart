import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawsome_v2/utils/constants/text_strings.dart';

import '../../../../common/widgets/onboarding_gradient.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_method.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperMethods.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              //TODO: if padding is required
              ),
          child: Column(
            children: [
              TransparentImage(isDarkMode: isDarkMode, imagePath: AppImages.loginImage, heightPercentage: 0.4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppString.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(AppString.loginSubTitle,
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 32.0, left: 48.0, right: 48.0),
                    child: Form(
                        child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.sms),
                              labelText: AppString.loginEmail),
                        ),
                        SizedBox(
                          height: 10,
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
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  activeColor: Colors.green,
                                  checkColor: Colors.white,
                                ),
                                Text(AppString.rememberMe,
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              ],
                            ),
                            //forgot password
                            TextButton(
                              onPressed: () {},
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
                                onPressed: () {},
                                child: Text(
                                  AppString.loginRedirectToSignClickText,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? AppColors.onPrimaryContainerDark
                                            : AppColors.onPrimaryContainerLight,
                                      ),
                                )),
                          ],
                        )
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
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
                          AppString.altLogins,
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // First Icon Container
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).brightness == Brightness.dark
                                  ? Colors.white // White border in dark mode
                                  : AppColors.onBackgroundLight, // Light border in light mode
                            ),
                            borderRadius: BorderRadius.circular(100)
                          ),
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
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).brightness == Brightness.dark
                                  ? Colors.white
                                  : AppColors.onBackgroundLight,
                            ),
                            borderRadius: BorderRadius.circular(100)
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Image(
                              width: 24,
                              height: 24,
                              image: AssetImage(AppImages.facebook),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
