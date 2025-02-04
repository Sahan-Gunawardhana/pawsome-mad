import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/common/widgets/shapes/containers/circular_shape.dart';
import 'package:pawsome_v2/common/widgets/success_screen/success_screen.dart';
import 'package:pawsome_v2/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:pawsome_v2/features/shop/screens/checkout/widgets/billing_address.dart';
import 'package:pawsome_v2/features/shop/screens/checkout/widgets/billing_payment.dart';
import 'package:pawsome_v2/features/shop/screens/checkout/widgets/payment.dart';
import 'package:pawsome_v2/navigation_menu.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperMethods.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Checkout",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              CartItems(
                showAddRemoveButton: false,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Promo Code",
                        hintText: "Enter your promo code here",
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.discount),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Apply")))
                ],
              ),
              SizedBox(
                height: 8,
              ),
              CircularContainer(
                showBorder: false,
                backgroundColor:
                    isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
                child: Column(
                  children: [
                    //TODO billing
                    BillingPayment(),
                    Divider(),
                    Payment(),
                    Divider(),
                    //TODO address
                    BillingAddress(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(24),
          child: ElevatedButton(
              onPressed: () => Get.to(() => SuccessScreen(
                  imageTitle: AppImages.success1,
                  title: "Payment Successful!",
                  subtitle:
                      "We are fetching your order to you as soon as we can", onPressed: ()=> Get.offAll(() => const NavigationMenu()) ,)),
              child: Text("Checkout \$45.0"))),
    );
  }
}
