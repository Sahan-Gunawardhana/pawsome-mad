import 'package:flutter/material.dart';
import 'package:pawsome_v2/features/authentication/screens/login/widgets/login_form.dart';
import 'package:pawsome_v2/utils/constants/text_strings.dart';
import '../../../../common/widgets/onboarding/onboarding_gradient.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_method.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperMethods.isDarkMode(context);
    final dividerText = AppString.altLogins;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              //TODO: if padding is required
              ),
          child: Column(
            children: [
              //transparent image stack for login n onboarding
              TransparentImage(isDarkMode: isDarkMode, imagePath: AppImages.loginImage, heightPercentage: 0.35),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //login title
                  Text(AppString.loginTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                  SizedBox(height: 10,),
                  Text(AppString.loginSubTitle, style: Theme.of(context).textTheme.titleMedium, textAlign: TextAlign.center),
                  Padding(padding: const EdgeInsets.only(
                        top: 32.0, left: 48.0, right: 48.0),
                    //login form
                    child: LoginForm(),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                    //custom divider for login and sign up
                    child: CustomDivider(isDarkMode: isDarkMode, dividerText: dividerText),
                  ),
                  Padding(padding: const EdgeInsets.all(8.0),
                    //login with google and facebook
                    child: SocialLogin(),
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
