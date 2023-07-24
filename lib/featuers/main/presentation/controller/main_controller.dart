import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../home/presentation/view/home_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../profile/persentation/view/profile_view.dart';
import '../../../schedules/presentations/view/schedules_view.dart';
import '../../../seasons/presentations/view/seasons_view.dart';

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
          ManagerAssets.season,
          colorFilter: ColorFilter.mode(
            selectedTab == 1 ? ManagerColors.primaryColor : ManagerColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
      FloatingNavbarItem(
        customWidget: SvgPicture.asset(
          ManagerAssets.schedule,
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

  List<Widget> screens = [
    const HomeView(),
    const SeasonsView(),
    const SchedulesView(),
    const ProfileView(),
  ];
}
