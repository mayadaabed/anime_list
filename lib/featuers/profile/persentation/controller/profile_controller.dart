import 'package:anime_list/config/constants.dart';
import 'package:anime_list/core/resources/manager_colors.dart';
import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/dependency_injection.dart';
import '../../../../core/service/theme_service.dart';
import '../../../../core/storage/local/app_settings_shared_preferences.dart';

class ProfileController extends GetxController {
  final AppSettingsSharedPreferences _appSettingsSharedPreferences =
      instance<AppSettingsSharedPreferences>();
  int selectedOption = 1;
  int valueDark = 1;
  int valueLight = 0;

  @override
  void onInit() {
    super.onInit();
    selectedOption =
        _appSettingsSharedPreferences.theme == Constants.prefKeyThemeDark
            ? 1
            : 0;
  }

  void logout(BuildContext context) {
    Get.defaultDialog(
        title: ManagerStrings.logout,
        middleText: ManagerStrings.sureLogout,
        backgroundColor: context.theme.scaffoldBackgroundColor,
        titlePadding: EdgeInsets.only(
          top: ManagerHeight.h20,
          bottom: ManagerHeight.h10,
        ),
        contentPadding: EdgeInsets.only(
          bottom: ManagerHeight.h20,
          left: ManagerWidth.w10,
          right: ManagerWidth.w10,
        ),
        titleStyle: context.textTheme.titleLarge,
        middleTextStyle: context.textTheme.headlineLarge,
        textConfirm: ManagerStrings.logout,
        textCancel: ManagerStrings.cancel,
        cancelTextColor: context.theme.iconTheme.color,
        confirmTextColor: ManagerColors.white,
        buttonColor: ManagerColors.red,
        radius: ManagerRadius.r50,
        onConfirm: () {
          Get.offAllNamed(Routes.outBoardingView);
          _appSettingsSharedPreferences.clear();
        });
  }

  onchanged(value) {
    selectedOption = value;
    ThemeService().switchTheme(value);
    update();
  }
}
