import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/common/widgets/icons/circular_icon.dart';
import 'package:pawsome_v2/common/widgets/layouts/grid_layout.dart';
import 'package:pawsome_v2/common/widgets/products/product_cart/product_card_vertical.dart';
import 'package:pawsome_v2/features/shop/screens/home/home.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Favourites",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
            icon: Icons.add,
            color: AppHelperMethods.isDarkMode(context)? Colors.white:Colors.black,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              AppGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, indext) => const ProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
