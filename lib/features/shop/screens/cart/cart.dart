import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/common/widgets/products/product_cart/product_price_text.dart';
import 'package:pawsome_v2/features/shop/screens/cart/widgets/cart_item_row.dart';
import 'package:pawsome_v2/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:pawsome_v2/features/shop/screens/checkout/checkout.dart';

import '../../../../common/widgets/product_cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: CartItems()
      ),
      bottomNavigationBar:
          Padding( padding: EdgeInsets.all(24) ,child: ElevatedButton(onPressed: () => Get.to(()=> const CheckoutScreen()), child: Text("Checkout \$45.0"))),
    );
  }
}
