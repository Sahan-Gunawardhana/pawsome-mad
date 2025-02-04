import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_method.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.imageTitle,
      required this.title,
      required this.subtitle,
      this.onPressed});

  final String imageTitle, title, subtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: 24, top: 56, bottom: 24, right: 24) * 2,
          child: Column(
            children: [
              Lottie.asset(
                imageTitle,
                width: AppHelperMethods.screenWidth(context) * 0.7,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 24,
              ),
              // Title and sub title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: Text(AppString.emailContinue))
              )
            ],
          ),
        ),
      ),
    );
  }
}
