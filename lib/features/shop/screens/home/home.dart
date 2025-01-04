import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/products/product_cart/product_card_vertical.dart';
import 'package:pawsome_v2/common/widgets/shapes/containers/search_bar.dart';
import 'package:pawsome_v2/features/shop/screens/home/widgets/banner_slider.dart';
import 'package:pawsome_v2/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:pawsome_v2/features/shop/screens/home/widgets/home_categories.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';

import '../../../../common/widgets/shapes/containers/primary_header.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          PrimaryHeader(
            child: Column(
              children: [
                // App bar
                const HomeAppBar(),
                const SizedBox(
                  height: 24,
                ),
                // search bar
                AppSearchBar(text: "Search in Store"),
                SizedBox(
                  height: 24,
                ),
                // categories
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Column(
                    children: [
                      SectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      AppHomeCategories(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            //image slider
            child: Column(
              children: [
                BannerSlider(
                  banners: [
                    AppImages.deals1,
                    AppImages.deals3,
                    AppImages.deals2,
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        mainAxisExtent: 288,
                        crossAxisSpacing: 16),
                    itemBuilder: (_, index) => ProductCardVertical()),
              ],
            ),
            //products
          ),
        ],
      ),
    ));
  }
}
