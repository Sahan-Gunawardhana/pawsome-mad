import 'package:flutter/material.dart';

import '../../../../../common/widgets/product_cart/cart_item.dart';
import '../../../../../common/widgets/products/product_cart/product_price_text.dart';
import 'cart_item_row.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: 16,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          AppCartItem(),
          if (showAddRemoveButton)
            SizedBox(
              height: 10,
            ),
          if (showAddRemoveButton)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 92,
                    ),
                    CartItemRow(),
                  ],
                ),
                ProductPriceText(
                  price: '45',
                ),
              ],
            )
        ],
      ),
    );
  }
}
