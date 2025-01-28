import 'package:flutter/material.dart';

import '../../../../../utils/helpers/helper_method.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({
    super.key,
    required this.width,
    required this.height,
    required this.length,
    required this.weight,
    this.description,
  });

  final double width, length, height, weight;
  final String? description;

  @override
  Widget build(BuildContext context) {
    final sw = AppHelperMethods.screenWidth(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${length.toString()} x ${width.toString()} x ${height.toString()} cm ${weight.toString()} kg',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
