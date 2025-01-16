import 'package:flutter/material.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.onTap,
      this.trailing});

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperMethods.isDarkMode(context);
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: isDarkMode? AppColors.onPrimaryLight : AppColors.onPrimaryDark,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
