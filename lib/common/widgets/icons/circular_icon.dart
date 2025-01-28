import 'package:flutter/material.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.size = 24,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperMethods.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor != null ? backgroundColor! : AppHelperMethods
              .isDarkMode(context)
              ? AppColors.surfaceDark
              : Colors.white),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
