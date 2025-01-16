import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/common/widgets/images/rounded_image.dart';
import 'package:pawsome_v2/common/widgets/texts/section_heading.dart';
import 'package:pawsome_v2/features/personalization/screens/profile/widgets/profile_row.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Profile", style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    AppRoundedImage(imageUrl: AppImages.user, width:80, height: 80, borderRadius: 50,),
                    TextButton(onPressed: () {}, child: Text("Change Profile Picture", style: Theme.of(context).textTheme.labelLarge,))
                  ],
                ),
              ),
              //Body
              SizedBox(height: 8,),
              Divider(),
              SizedBox(height: 16,),
              SectionHeading(title: "Profile Information", showActionButton: false,),
              SizedBox(height: 16,),
              ProfileRow(title: "Name",value: "John Doe", onPressed: () {},),
              ProfileRow(title: "Username",value: "JohnDoe1122", onPressed: () {},),
              SizedBox(height: 16,),
              Divider(),
              SizedBox(height: 16,),
              ProfileRow(title: "E-mail",value: "johndoe@mail.com", onPressed: () {},),
              ProfileRow(title: "Phone Number",value: "+92 77 933 6029", onPressed: () {},),
              ProfileRow(title: "Male",value: "Male", onPressed: () {},),
              ProfileRow(title: "Date of Birth",value: "22 Nov, 2001", onPressed: () {},),
              Divider(),
              SizedBox(height: 16,),
              Center(
                child: TextButton(onPressed: () {},  child: Text("Delete Account", style: TextStyle(color: AppColors.errorLight),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
