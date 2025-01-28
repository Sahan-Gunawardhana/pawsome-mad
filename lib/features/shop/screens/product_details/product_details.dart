import 'package:flutter/material.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/add_to_cart.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/product_data.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/product_image_widget.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/ratings.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AddToCart(),
      body: SingleChildScrollView(
        child: Column(
          //image
          children: [
            ProductImage(),
            Padding(
              padding: EdgeInsets.only(right: 24, left: 24, bottom: 24),
              child: Column(
                children: [
                  RatingsAndShare(),
                  //Name
                  ProductData(),
                  //Attributes length, width, height, weight
                  SizedBox(
                    height: 16,
                  ),
                  ProductAttributes(
                      width: 24, height: 24, length: 24, weight: 5.4),
                  //checkout button
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Checkout"))),
                  SizedBox(
                    height: 16,
                  ),
                  ReadMoreText(
                    "The Pawsome Comfort Pet Bed provides ultimate comfort and support for your pet, featuring a soft plush fabric and orthopedic foam base. Perfect for pets of all ages, it helps relieve joint pressure and promote restful sleep. The bed is easy to clean with a removable, washable cover. Available in various sizes, it suits any breed or size, and its non-slip bottom keeps it securely in place. With a stylish, neutral design, it blends seamlessly into your home decor while offering superior comfort.",
                    trimExpandedText: "Show less",
                    trimCollapsedText: "Show more",
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
