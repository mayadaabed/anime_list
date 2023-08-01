import 'package:anime_list/core/resources/manager_text_theme_dark.dart';
import 'package:flutter/material.dart';
import '../../config/constants.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_styles.dart';

ThemeData managerDarkThemeData() {
  return ThemeData.dark().copyWith(
    useMaterial3: true,

    // MAIN COLORs APP
    primaryColor: ManagerColors.primaryColor,
    primaryColorDark: ManagerColors.primaryColorDark,

    // disabled button colors
    disabledColor: ManagerColors.disabledColor,
    splashColor: ManagerColors.greyLight,
    scaffoldBackgroundColor: ManagerColors.scaffoldBackgroundColorDark,

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

    textTheme: ManagerTextThemeDark(),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ManagerColors.black,
    ),

    iconTheme: const IconThemeData(
      color: ManagerColors.white,
    ),

    cardColor: ManagerColors.containerColorDark.withOpacity(.5),
    shadowColor: ManagerColors.black,
    dividerColor: ManagerColors.greyLight,
    canvasColor: ManagerColors.black,
  );
}
