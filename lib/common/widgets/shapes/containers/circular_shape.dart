import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.borderRadius = 16,
    this.backgroundColor = AppColors.backgroundLight,
    this.showBorder = false,
    this.padding,
    this.margin,
    this.borderColor = AppColors.primaryContainerDark

  });

  final double? width;
  final double? height;
  final double borderRadius;
  final Color? backgroundColor;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor, border: showBorder? Border.all(color: borderColor): null),
      child: child,
    );
  }
}
