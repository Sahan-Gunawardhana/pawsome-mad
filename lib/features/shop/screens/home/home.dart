import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';
import '../../../../common/widgets/product_cart/cart_menu_icon.dart';
import '../../../../common/widgets/shapes/containers/primary_header.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          PrimaryHeader(
            child: Column(
              children: [
                // App bar
                const HomeAppBar(),
                const SizedBox(height: 24,),
                // search bar
                SearchBar(
                  text: "Search in Store",
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
