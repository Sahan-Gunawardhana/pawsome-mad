import 'package:flutter/material.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

import '../../../utils/constants/colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = "View all",
    this.onPressed,
    this.showActionButton = true,
    this.darkMode = true
  });

  final String title, buttonTitle;
  final void Function()? onPressed;
  final bool showActionButton;
  final bool darkMode;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperMethods.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: darkMode?(isDarkMode? Colors.white: Colors.black): AppColors.onPrimaryDark),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
