import 'package:flutter/material.dart';

import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../utils/constants/colors.dart';



class CartItemRow extends StatelessWidget {
  const CartItemRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(icon: Icons.remove, width: 40,height: 40, backgroundColor: AppColors.primaryContainerLight, color: Colors.black,),
        SizedBox(width: 24,),
        Text("2", style: Theme.of(context).textTheme.bodySmall,),
        SizedBox(width: 24,),
        CircularIcon(icon: Icons.add, width: 40,height: 40, backgroundColor: AppColors.primaryContainerLight, color: Colors.black,),
      ],
    );
  }
}
