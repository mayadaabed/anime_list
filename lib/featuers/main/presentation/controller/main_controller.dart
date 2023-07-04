import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../home/presentation/view/home_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainController extends GetxController {
  late int selectedTab = 0;
  late List<FloatingNavbarItem> bottomNavBarItems;

  @override
  void onInit() {
    super.onInit();
    handleIndexChanged(0);
  }

  void handleIndexChanged(int i) {
    selectedTab = i;
    bottomNavBarItems = [
      FloatingNavbarItem(
        customWidget: SvgPicture.asset(
          ManagerAssets.homeImage,
          colorFilter: ColorFilter.mode(
            selectedTab == 0 ? ManagerColors.primaryColor : ManagerColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
      FloatingNavbarItem(
        customWidget: SvgPicture.asset(
          ManagerAssets.category,
          colorFilter: ColorFilter.mode(
            selectedTab == 1 ? ManagerColors.primaryColor : ManagerColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
      FloatingNavbarItem(
        customWidget: SvgPicture.asset(
          ManagerAssets.homeImage,
          colorFilter: ColorFilter.mode(
            selectedTab == 2 ? ManagerColors.primaryColor : ManagerColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
      FloatingNavbarItem(
        customWidget: SvgPicture.asset(
          ManagerAssets.profile,
          colorFilter: ColorFilter.mode(
            selectedTab == 3 ? ManagerColors.primaryColor : ManagerColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    ];
    update();
  }

  Color color = ManagerColors.black;
  List<Widget> screens = [
    const HomeView(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellowAccent,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
