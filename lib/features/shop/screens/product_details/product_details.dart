import 'package:flutter/material.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/add_to_cart.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/product_data.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/product_image_widget.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/ratings.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/icons/circular_icon.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        actions: [
          CircularIcon(
            icon: Icons.favorite,
            color: Colors.red,
          )
        ],
      ),
      bottomNavigationBar: AddToCart(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          // Portrait mode layout
          if (orientation == Orientation.portrait) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  ProductImage(),
                  Padding(
                    padding: EdgeInsets.only(right: 24, left: 24, bottom: 24),
                    child: Column(
                      children: [
                        RatingsAndShare(),
                        ProductData(),
                        SizedBox(height: 16),
                        ProductAttributes(width: 24, height: 24, length: 24, weight: 5.4),
                        SizedBox(height: 32),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("Checkout"))),
                        SizedBox(height: 32),
                        ReadMoreText(
                          "The Pawsome Comfort Pet Bed provides ultimate comfort and support for your pet, featuring a soft plush fabric and orthopedic foam base. Perfect for pets of all ages, it helps relieve joint pressure and promote restful sleep. The bed is easy to clean with a removable, washable cover. Available in various sizes, it suits any breed or size, and its non-slip bottom keeps it securely in place. With a stylish, neutral design, it blends seamlessly into your home decor while offering superior comfort.",
                          trimExpandedText: "Show less",
                          trimCollapsedText: "Show more",
                          trimMode: TrimMode.Line,
                          trimLines: 2,
                          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          } else {
            // Landscape mode layout
            return SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left side (Image)
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        ProductImage(),
                      ],
                    ),
                  ),
                  // Right side (Details)
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingsAndShare(),
                          ProductData(),
                          SizedBox(height: 16),
                          ProductAttributes(width: 24, height: 24, length: 24, weight: 5.4),
                          SizedBox(height: 32),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Checkout"),
                            ),
                          ),
                          SizedBox(height: 32),
                          ReadMoreText(
                            "The Pawsome Comfort Pet Bed provides ultimate comfort and support for your pet, featuring a soft plush fabric and orthopedic foam base. Perfect for pets of all ages, it helps relieve joint pressure and promote restful sleep. The bed is easy to clean with a removable, washable cover. Available in various sizes, it suits any breed or size, and its non-slip bottom keeps it securely in place. With a stylish, neutral design, it blends seamlessly into your home decor while offering superior comfort.",
                            trimExpandedText: "Show less",
                            trimCollapsedText: "Show more",
                            trimMode: TrimMode.Line,
                            trimLines: 2,
                            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                            lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}