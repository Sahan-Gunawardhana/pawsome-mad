import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/common/widgets/shapes/containers/primary_header.dart';
import 'package:pawsome_v2/common/widgets/texts/section_heading.dart';
import 'package:pawsome_v2/common/widgets/tiles/settings_tile.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';

import '../../../../common/widgets/tiles/profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //TODO header
            PrimaryHeader(
                child: Column(
              children: [
                CustomAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.onPrimaryDark),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ProfileTile(),
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            )),
            //TODO body
            Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  SectionHeading(title: "Account Settings", showActionButton: false,),
                  SizedBox(
                    height: 16,
                  ),
                  SettingsTile(icon: Icons.home_outlined, title: "My Address", subTitle: "Set order delivery address", onTap: () {},),
                  SettingsTile(icon: Icons.home_outlined, title: "My Address", subTitle: "Set order delivery address", onTap: () {},),
                  SettingsTile(icon: Icons.home_outlined, title: "My Address", subTitle: "Set order delivery address", onTap: () {},),
                  SettingsTile(icon: Icons.home_outlined, title: "My Address", subTitle: "Set order delivery address", onTap: () {},),
                  SettingsTile(icon: Icons.home_outlined, title: "My Address", subTitle: "Set order delivery address", onTap: () {},),
                  SettingsTile(icon: Icons.home_outlined, title: "My Address", subTitle: "Set order delivery address", onTap: () {},)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
