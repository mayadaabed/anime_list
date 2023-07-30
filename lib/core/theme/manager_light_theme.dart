import 'package:flutter/material.dart';

import '../../config/constants.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_styles.dart';
import '../resources/manager_text_theme_light.dart';

ThemeData managerLightThemeData() {
  return ThemeData.light().copyWith(
    useMaterial3: true,

    // MAIN COLORs APP
    primaryColor: ManagerColors.primaryColor,
    primaryColorLight: ManagerColors.primaryColorLight,

    // disabled button colors
    disabledColor: ManagerColors.textColor,
    splashColor: ManagerColors.greyLight,
    scaffoldBackgroundColor: ManagerColors.scaffoldBackgroundColorLight,

    // APP BAR THEME
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ManagerColors.greyLight,
      elevation: Constants.elevation,
      titleTextStyle: getBoldTextStyle(
        fontSize: ManagerFontSize.s14,
        color: ManagerColors.primaryColor,
      ),
    ),

    // BUTTON THEME
    buttonTheme: const ButtonThemeData(
        shape: RoundedRectangleBorder(),
        disabledColor: ManagerColors.greyLight,
        buttonColor: ManagerColors.primaryColor),
    textTheme: ManagerTextThemeLight(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ManagerColors.bottomNavLight,
    ),
    iconTheme: const IconThemeData(
      color: ManagerColors.black,
    ),

    cardColor: ManagerColors.containerColorLight,
    shadowColor: ManagerColors.greyLight,
    dividerColor: ManagerColors.greyLight,
  );
}
