import 'package:anime_list/core/resources/manager_colors.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/constants.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/widgets/will_pop_scope.dart';
import '../controller/main_controller.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: GetBuilder<MainController>(builder: (controller) {
        return Scaffold(
            extendBody: true,
            body: controller.screens[controller.selectedTab],
            bottomNavigationBar: FloatingNavbar(
              borderRadius: ManagerRadius.r50,
              backgroundColor: ManagerColors.black,
              selectedBackgroundColor: ManagerColors.transparent,
              items: controller.bottomNavBarItems,
              onTap: controller.handleIndexChanged,
              selectedItemColor: ManagerColors.primaryColor,
              unselectedItemColor: ManagerColors.greyLight,
              currentIndex: controller.selectedTab,
              padding: const EdgeInsets.all(Constants.navBarPadding),
              margin: const EdgeInsets.all(Constants.navBarMargin),
            ));
      }),
    );
  }
}
