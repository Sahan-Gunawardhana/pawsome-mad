
import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/image_text/image_text_vertical.dart';
import '../../../../../utils/constants/image_strings.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: AppImages.cat1,
            title: "Food",
            onTap: () {},
          );
        },
      ),
    );
  }
}
