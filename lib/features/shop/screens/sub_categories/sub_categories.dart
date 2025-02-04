import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/common/widgets/images/rounded_image.dart';
import 'package:pawsome_v2/common/widgets/layouts/grid_layout.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';

import '../../../../common/widgets/products/product_cart/product_card_vertical.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Category Name"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              AppRoundedImage(width: double.infinity,imageUrl: AppImages.product1, applyImageRadius: true,),
              SizedBox(height: 16,),
              AppGridLayout(itemCount: 4, itemBuilder: (_,index) => ProductCardVertical(), isPortrait: isPortrait)
            ],
          ),
        ),
      ),
    );
  }
}
