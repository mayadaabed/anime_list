import 'package:anime_list/core/resources/manager_colors.dart';
import 'package:anime_list/core/resources/manager_fonts.dart';
import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/core/resources/manager_styles.dart';
import 'package:anime_list/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/dependency_injection.dart';
import '../../../../core/storage/local/app_settings_shared_preferences.dart';

class ProfileController extends GetxController {
  final AppSettingsSharedPreferences _appSettingsSharedPreferences =
      instance<AppSettingsSharedPreferences>();
  void logout() {
    Get.defaultDialog(
        title: ManagerStrings.logout,
        middleText: ManagerStrings.sureLogout,
        backgroundColor: ManagerColors.backgroundColor,
        titlePadding: EdgeInsets.only(
          top: ManagerHeight.h20,
          bottom: ManagerHeight.h10,
        ),
        contentPadding: EdgeInsets.only(
          bottom: ManagerHeight.h20,
          left: ManagerWidth.w10,
          right: ManagerWidth.w10,
        ),
        titleStyle: getBoldTextStyle(
          fontSize: ManagerFontSize.s18,
          color: ManagerColors.textColor,
        ),
        middleTextStyle: getRegularTextStyle(
          fontSize: ManagerFontSize.s16,
          color: ManagerColors.textColor,
        ),
        textConfirm: ManagerStrings.logout,
        textCancel: ManagerStrings.cancel,
        cancelTextColor: ManagerColors.white,
        confirmTextColor: ManagerColors.white,
        buttonColor: ManagerColors.red,
        radius: ManagerRadius.r50,
        onConfirm: () {
          Get.offAllNamed(Routes.outBoardingView);
          _appSettingsSharedPreferences.clear();
        });
  }
}
