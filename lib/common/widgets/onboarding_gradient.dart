import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/helpers/helper_method.dart';

class TransparentImage extends StatelessWidget {
  const TransparentImage({
    super.key,
    required this.isDarkMode,
    required this.imagePath,
    required this.heightPercentage
  });
  final bool isDarkMode;
  final String imagePath;
  final double heightPercentage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(AppImages.loginImage),
          fit: BoxFit.cover,
          width: double.infinity,
          height: AppHelperMethods.screenHeight() * heightPercentage,
        ),
        Container(
          width: double.infinity,
          height: AppHelperMethods.screenHeight() * heightPercentage,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0, -1),
                end: Alignment(0, 1),
                colors: [
                  Colors.transparent,
                  isDarkMode
                      ? AppColors.backgroundDark.withOpacity(0.7)
                      : AppColors.backgroundLight.withOpacity(0.7),
                  isDarkMode
                      ? AppColors.backgroundDark.withOpacity(1)
                      : AppColors.backgroundLight.withOpacity(1)
                ],
                stops: [0.0, 0.7, 1.0],
              )),
        ),
      ],
    );
  }
}
