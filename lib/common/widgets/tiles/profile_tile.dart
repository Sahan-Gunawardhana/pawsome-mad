import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/images/rounded_image.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';

import '../../../utils/constants/colors.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppRoundedImage(
        imageUrl: AppImages.user,
        width: 50,
        height: 50,
        padding: EdgeInsets.zero,
        borderRadius: 50,
      ),
      title: Text(
        "John Doe",
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: AppColors.onPrimaryDark),
      ),
      subtitle: Text(
        "JohnDoe@mail.com",
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: AppColors.onPrimaryDark),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.edit,
            color: AppColors.onPrimaryDark,
          )),
    );
  }
}
