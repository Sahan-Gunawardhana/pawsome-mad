
import 'package:flutter/cupertino.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key, this.width, this.height, required this.borderRadius, this.backgroundColor, this.child,
  });
  final double? width;
  final double? height;
  final double borderRadius;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor
      ),
      child: child,
    );
  }
}
