import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawsome_v2/features/authentication/screens/login/widgets/login_form.dart';
import 'package:pawsome_v2/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/constants/text_strings.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperMethods.isDarkMode(context);
    final dividerText = AppString.altLogins2;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Text(AppString.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
                  SizedBox(height: 24,),
                  //sign up form
                  signupForm(isDarkMode: isDarkMode),
                  SizedBox(height: 32,),
                  //Divider
                  CustomDivider(isDarkMode: isDarkMode, dividerText: dividerText,),
                  SizedBox(height: 16,),
                  //sign up with google and facebook
                  SocialLogin()
                ],
              )
          )
      ),
    );
  }
}
