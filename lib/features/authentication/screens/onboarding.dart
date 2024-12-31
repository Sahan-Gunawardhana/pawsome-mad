import 'package:flutter/material.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';
import 'package:pawsome_v2/utils/constants/text_strings.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

import '../../../utils/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperMethods.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage(AppImages.landingImage),
                fit: BoxFit.cover,
                width: double.infinity,
                height: AppHelperMethods.screenHeight() * 0.6,
              ),
              Container(
                width: double.infinity,
                height: AppHelperMethods.screenHeight() * 0.6,
                decoration: BoxDecoration(gradient: LinearGradient(
                  begin: Alignment(0,-1),
                  end: Alignment(0, 1),
                  colors: [
                    Colors.transparent,
                    isDarkMode
                      ?AppColors.backgroundDark.withOpacity(0.7)
                        : AppColors.backgroundLight.withOpacity(0.7),
                    isDarkMode
                      ? AppColors.backgroundDark.withOpacity(1)
                        : AppColors.backgroundLight.withOpacity(1)
                  ],
                  stops: [0.0,0.7,1.0],
                  )
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(AppString.landingTitle1,style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
          ),

          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(AppString.landingTitle2,style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
          ),
          SizedBox(height: 10,),
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
          )
        ],
      ),
    ));
  }
}
