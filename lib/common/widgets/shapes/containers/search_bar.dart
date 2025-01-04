
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_method.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key, required this.text, this.icon = Icons.search, this.showBackground = true, this.showBorder = true, this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperMethods.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          width: AppHelperMethods.screenWidth(context),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: showBackground ? isDarkMode? Colors.black: Colors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(32),
              border: showBorder? Border.all(color: AppColors.primaryContainerDark) : null
          ),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: 16,),
              Text(text, style: Theme.of(context).textTheme.titleMedium,)
            ],
          ),
        ),
      ),
    );
  }
}
