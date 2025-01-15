import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/images/rounded_image.dart';
import 'package:pawsome_v2/common/widgets/products/product_cart/product_price_text.dart';
import 'package:pawsome_v2/common/widgets/shapes/containers/circular_shape.dart';
import 'package:pawsome_v2/common/widgets/texts/product_title.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

import '../../icons/circular_icon.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperMethods.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isDarkMode ? AppColors.surfaceDark : AppColors.surfaceLight),
        child: Column(
          children: [
            // Thumbnail wishlist button
            CircularContainer(
              height: 180,
              padding: EdgeInsets.all(8),
              backgroundColor: isDarkMode
                  ? AppColors.backgroundDark
                  : AppColors.backgroundLight,
              child: Stack(
                children: [
                  //image
                  AppRoundedImage(
                      imageUrl: AppImages.product2, applyImageRadius: true),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: CircularIcon(
                        icon: Icons.favorite_outline,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitle(
                    title: "Premium Dog Food",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Paws",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8),
                  child: ProductPriceText(price: "55.00"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.primaryContainerLight,
                        borderRadius: BorderRadius.circular(8)),
                    child: SizedBox(
                        width: 32 * 1.2,
                        height: 32 * 1.2,
                        child: Center(
                            child: Icon(Icons.add,
                                color:
                                AppColors.onPrimaryContainerLight))),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
