import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/features/shop/screens/home/home.dart';
import 'package:pawsome_v2/features/shop/screens/profile/widgets/profile.dart';
import 'package:pawsome_v2/features/shop/screens/store/store.dart';
import 'package:pawsome_v2/features/shop/screens/wishlist/widgets/wishlist.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/helpers/helper_method.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());
    final isDarkMode = AppHelperMethods.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(
                color: Colors.white,
                fontSize: 12
              )
            )
          ),
          child: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) => controller.selectedIndex.value = index,
            backgroundColor: isDarkMode? AppColors.secondaryContainerDark: AppColors.secondaryContainerLight,
            indicatorColor: isDarkMode?  Colors.white.withOpacity(0.2) : Colors.grey.withOpacity(0.5),
            destinations: const [
               NavigationDestination(icon: Icon(Icons.home_outlined, color: Colors.white,),label: "Home",),
               NavigationDestination(icon: Icon(Icons.store_outlined, color: Colors.white), label: "Store"),
               NavigationDestination(icon: Icon(Icons.favorite_outline, color: Colors.white), label: "Wishlist"),
               NavigationDestination(icon: Icon(Icons.account_circle_outlined, color: Colors.white), label: "Profile",),
          ]),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const ProfileScreen()
  ];
}
