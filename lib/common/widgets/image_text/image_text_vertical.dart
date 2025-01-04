import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_method.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColors.onPrimaryContainerLight,
    this.backgroundColor = AppColors.tertiaryContainerLight,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //circular item
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: backgroundColor ??
                      (AppHelperMethods.isDarkMode(context)
                          ? AppColors.tertiaryContainerDark
                          : AppColors.tertiaryContainerLight),
                  borderRadius: BorderRadius.circular(100),
                  border:
                  Border.all(color: AppColors.onSecondaryContainerLight)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: textColor, fontSize: 8),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
