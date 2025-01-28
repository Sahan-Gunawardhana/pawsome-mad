import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';


class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = AppHelperMethods.isDarkMode(context);
    return CurvedEdgesWidget(

      child: Container(
        color: dark ? AppColors.surfaceDark : AppColors.surfaceLight,
        child: const Stack(
          children: [
            SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Center(
                      child:
                      Image(image: AssetImage(AppImages.product2))),
                )
            ),

          ],
        ),
      ),
    );
  }
}
