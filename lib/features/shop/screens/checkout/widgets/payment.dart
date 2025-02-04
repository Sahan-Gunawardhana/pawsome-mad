import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/shapes/containers/circular_shape.dart';
import 'package:pawsome_v2/common/widgets/texts/section_heading.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperMethods.isDarkMode(context);
    return Column(
      children: [
        const SectionHeading(title: "Payment Options", buttonTitle: "Change"),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text("Cash on Delivery", style: Theme.of(context).textTheme.bodyMedium,),
          ],
        )
      ],
    );
  }
}
