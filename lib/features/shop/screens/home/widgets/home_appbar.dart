
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pawsome_v2/features/shop/controllers/home_page_controller.dart';

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
    final homeController = Get.put(HomePageController());
    final storage = GetStorage();
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppString.homeAppbarTitle, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.onPrimaryDark),),
          Obx(() => Text( homeController.user.value.name, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.onPrimaryDark, fontSize: 20, fontWeight: FontWeight.w600),))
        ],
      ),
      actions: [
        CartCounter(onPressed: () {  },)
      ],
    );
  }
}
