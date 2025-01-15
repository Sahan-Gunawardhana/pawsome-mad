
import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product_cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppString.homeAppbarTitle, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.onPrimaryDark),),
          Text(AppString.homeAppbarSubTitle, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.onPrimaryDark, fontSize: 20, fontWeight: FontWeight.w600),)
        ],
      ),
      actions: [
        CartCounter(onPressed: () {  },)
      ],
    );
  }
}
