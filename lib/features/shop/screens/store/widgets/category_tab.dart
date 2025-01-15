import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/layouts/grid_layout.dart';
import 'package:pawsome_v2/common/widgets/products/product_cart/product_card_vertical.dart';
import 'package:pawsome_v2/common/widgets/texts/section_heading.dart';

class AppCategoryTab extends StatelessWidget {
  const AppCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24, right: 16, top: 16, bottom: 16),
          child: Column(
            children: [
              SectionHeading(title: "Best Choice fo Your Pets", onPressed: () {},),
              AppGridLayout(itemCount: 6, itemBuilder: (_,index) => ProductCardVertical()),
              SizedBox(height: 16,)
            ],
          ),
        ),
      ],
    );
  }
}
