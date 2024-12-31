import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/common/widgets/onboarding_gradient.dart';
import 'package:pawsome_v2/features/authentication/controllers/onboarding_controller.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';
import 'package:pawsome_v2/utils/constants/text_strings.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';


import '../../../../utils/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    final isDarkMode = AppHelperMethods.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TransparentImage(isDarkMode: isDarkMode, imagePath: AppImages.landingImage, heightPercentage: 0.6),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(AppString.landingTitle1,style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
          ),

          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(AppString.landingTitle2,style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              ElevatedButton(
                  onPressed: (){

                  },
                  child: Text(
                    AppString.landingButtonText
                  )
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(AppString.landingRedirectText, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center,),
              ),
              OutlinedButton(onPressed: () {}, child: Text("Login")
              ),
            ],
          )
        ],
      ),
    ));
  }
}
