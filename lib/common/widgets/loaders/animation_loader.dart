import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';

class AnimationLoader extends StatelessWidget {
  const AnimationLoader({super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed});

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.8),
          const SizedBox(
            height: 16,
          ),
          Text(
            text,
            style: Theme
                .of(context)
                .textTheme
                .bodyLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16,),
          showAction
              ? SizedBox(
            width: 250,
            child: OutlinedButton(onPressed: onActionPressed,
                style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.surfaceDark),
                child: Text(actionText!, style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium,)),
          ) : const SizedBox()
        ],
      ),
    );
  }
}
