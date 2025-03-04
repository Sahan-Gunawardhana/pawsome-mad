
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/features/shop/screens/cart/cart.dart';
import '../../../utils/constants/colors.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    super.key, required this.onPressed, this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon: Icon(Icons.shopping_bag_outlined, color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18, height: 18,
            decoration: BoxDecoration(
                color: AppColors.errorContainerLight,
                borderRadius: BorderRadius.circular(100)
            ),
            child:Center(
              child: Text('2', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black)),
            ),
          ),
        )
      ],
    );
  }
}
