import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../icons/circular_icon.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularIcon(
        icon: Icons.person,
        height: 50,
        width: 50,
        padding: EdgeInsets.all(0),
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
          onPressed: () {},
          icon: Icon(
            Icons.edit,
            color: AppColors.onPrimaryDark,
          )),
    );
  }
}
