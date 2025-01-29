import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/common/widgets/shapes/containers/circular_shape.dart';
import 'package:pawsome_v2/features/personalization/screens/address/widgets/address.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';

import 'add_new_address.dart';

class Addresses extends StatelessWidget {
  const Addresses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        backgroundColor: AppColors.primaryContainerLight,
        child: Icon(
          Icons.add,
          color: AppColors.onPrimaryContainerLight,
        ),
      ),
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Addresses",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              Address(selectedAddress: false),
              Address(selectedAddress: true)
            ],
          ),
        ),
      ),
    );
  }
}
