import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/common/widgets/icons/circular_icon.dart';
import 'package:pawsome_v2/common/widgets/layouts/grid_layout.dart';
import 'package:pawsome_v2/common/widgets/products/product_cart/product_card_vertical.dart';
import 'package:pawsome_v2/features/shop/screens/home/home.dart';
import 'package:pawsome_v2/navigation_menu.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Favourites",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          CircularIcon(
            icon: Icons.add,
            color: AppHelperMethods.isDarkMode(context)
                ? Colors.white
                : Colors.black,
            onPressed: () => Get.offAll(NavigationMenu()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              AppGridLayout(
                itemCount: 8,
                itemBuilder: (_, index) => const ProductCardVertical(),
                isPortrait: isPortrait,
              )
            ],
          ),
        ),
      ),
    );
  }
}
