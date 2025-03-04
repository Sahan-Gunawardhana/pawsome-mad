import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/features/shop/controllers/home_controller.dart';

import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../common/widgets/shapes/containers/circular_shape.dart';
import '../../../../../utils/constants/colors.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({
    super.key, required this.banners,
  });


  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items:
            banners.map((url) => AppRoundedImage(imageUrl: url)).toList()
        ),
        SizedBox(
          height: 16,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 15,
                    height: 3,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i ? AppColors.tertiaryLight : AppColors.tertiaryDark,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
