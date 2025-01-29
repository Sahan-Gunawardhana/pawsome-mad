import 'package:flutter/material.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

import '../../../../../common/widgets/shapes/containers/circular_shape.dart';

class Address extends StatelessWidget {
  const Address({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperMethods.isDarkMode(context);
    return CircularContainer(
      width: double.infinity,
      showBorder: true,
      padding: EdgeInsets.all(16),
      backgroundColor: selectedAddress
          ? isDark
              ? AppColors.primaryContainerDark
              : AppColors.primaryContainerLight
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : isDark
              ? AppColors.onPrimaryLight
              : AppColors.onPrimaryDark,
      margin: EdgeInsets.only(bottom: 16),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Icons.check_circle_outline_rounded : null,
              color: selectedAddress
                  ? isDark
                      ? AppColors.onPrimaryLight
                      : AppColors.onPrimaryDark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "0123456789",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "123, Flower Street, Peradeniya, 20000, Sri Lanka",
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
