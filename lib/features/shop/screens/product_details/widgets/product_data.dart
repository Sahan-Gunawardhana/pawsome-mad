import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/products/product_cart/product_price_text.dart';
import 'package:pawsome_v2/common/widgets/texts/product_title.dart';


class ProductData extends StatelessWidget {
  const ProductData({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ProductPriceText(price: '55')
            ],
          ),
          SizedBox(height: 16,),
          ProductTitle(title: "Puppy Food"),
          SizedBox(height: 16,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProductTitle(title: "Status", smallSize: true,),
              SizedBox(width: 16,),
              Text("In Stock", style:  Theme.of(context).textTheme.titleSmall)
            ],
          ),

        ],
      ),
    );
  }
}
