import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:pawsome_v2/common/widgets/shapes/containers/search_bar.dart';
import 'package:pawsome_v2/features/shop/screens/store/widgets/category_tab.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperMethods.isDarkMode(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          actions: [
            CartCounter(
              onPressed: () {},
              iconColor: isDark ? Colors.white : Colors.black,
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: AppHelperMethods.isDarkMode(context)
                      ? AppColors.backgroundDark
                      : AppColors.backgroundLight,
                  expandedHeight: 160,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(24),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        AppSearchBar(
                          text: 'Search the Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        //TODO- featured brands

                        // SectionHeading(title: "Featured Products", onPressed: () {},),
                        // AppGridLayout(itemCount: 2, itemBuilder: (_, index) => const ProductCardVertical(),),
                      ],
                    ),
                  ),
                  //TODO tab bar
                  bottom: TabBar(
                      isScrollable: true,
                      indicatorColor: AppColors.onBackgroundLight,
                      unselectedLabelColor: AppColors.onPrimaryLight,
                      labelColor: isDark
                          ? AppColors.onPrimaryContainerDark
                          : AppColors.onPrimaryContainerLight,
                      tabs: [
                        Tab(
                          child: Text("Food"),
                        ),
                        Tab(
                          child: Text("Health"),
                        ),
                        Tab(
                          child: Text("Toys"),
                        ),
                        Tab(
                          child: Text("Clothes"),
                        ),
                        Tab(
                          child: Text("Grooming"),
                        ),
                        Tab(
                          child: Text("Accessories"),
                        ),
                      ]),
                )
              ];
            },

            //TODO content
            body: TabBarView(children: [
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
            ])),
      ),
    );
  }
}
