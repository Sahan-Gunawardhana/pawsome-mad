import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';
import 'package:pawsome_v2/utils/constants/text_strings.dart';

import '../../../../utils/helpers/helper_method.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 56, left: 24, right: 24, bottom: 24),
        child: Column(
          children: [
            Image(
              image: AssetImage(AppImages.resetEmailSent),
              width: AppHelperMethods.screenWidth(context) * 0.7,
            ),
            SizedBox(
              height: 24,
            ),
            // Title and sub title
            Text(
              AppString.resetTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              AppString.resetSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(AppString.done))
            ),
            SizedBox(height: 24,),
            TextButton(onPressed: () {}, child: Text(AppString.resend, style: Theme.of(context).textTheme.labelLarge,))
          ],
        ),
      ),
    );
  }
}
