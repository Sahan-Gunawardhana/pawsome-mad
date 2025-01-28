import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/icons/circular_icon.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperMethods.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      decoration: BoxDecoration(
          color: isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Icons.remove,
                backgroundColor: AppColors.primaryContainerLight,
                width: 40,
                height: 40,
                color: AppColors.onPrimaryContainerLight,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                width: 16,
              ),
              CircularIcon(
                icon: Icons.add,
                backgroundColor: AppColors.primaryContainerLight,
                width: 40,
                height: 40,
                color: AppColors.onPrimaryContainerLight,
              ),
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text("Add to Cart"))
        ],
      ),
    );
  }
}
