import 'package:flutter/material.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/product_data.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/product_image_widget.dart';
import 'package:pawsome_v2/features/shop/screens/product_details/widgets/ratings.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ProductData()
                  //price
                  //Attributes length, width, height, weight
                  //description
                  //checkout button
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
