import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/helpers/helper_method.dart';
import '../images/rounded_image.dart';

class AppCartItem extends StatelessWidget {
  const AppCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppRoundedImage(
          imageUrl: AppImages.product1,
          width: 80,
          height: 80,

          borderRadius: 15,
          backgroundColor: AppHelperMethods.isDarkMode(context)
              ? AppColors.surfaceDark
              : AppColors.surfaceLight,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Puppy Clothes",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ], // Missing closing bracket added here
          ),
        ),
      ],
    );
  }
}
