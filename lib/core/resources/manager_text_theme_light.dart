import 'package:flutter/material.dart';
import 'manager_colors.dart';
import 'manager_fonts.dart';
import 'manager_styles.dart';

class ManagerTextThemeLight extends TextTheme {
  @override
  TextStyle get displayMedium => getMediumTextStyle(
        fontSize: ManagerFontSize.s20,
        color: ManagerColors.textColorLight,
      );

  @override
  TextStyle get displaySmall => getBoldTextStyle(
        fontSize: ManagerFontSize.s16,
        color: ManagerColors.textColorLight,
      );

  @override
  TextStyle get headlineMedium => getMediumTextStyle(
        fontSize: ManagerFontSize.s16,
        color: ManagerColors.greyLight,
      );

  @override
  TextStyle get headlineSmall => getRegularTextStyle(
        fontSize: ManagerFontSize.s14,
        color: ManagerColors.greyLight,
      );

  @override
  TextStyle get headlineLarge => getBoldTextStyle(
        fontSize: ManagerFontSize.s16,
        color: ManagerColors.greyLight,
      );

  @override
  TextStyle get titleMedium => getMediumTextStyle(
        fontSize: ManagerFontSize.s14,
        color: ManagerColors.textColorLight,
      );

  @override
  TextStyle get titleSmall => getRegularTextStyle(
        fontSize: ManagerFontSize.s12,
        color: ManagerColors.textColorLight,
      );

  @override
  TextStyle get titleLarge => getBoldTextStyle(
        fontSize: ManagerFontSize.s20,
        color: ManagerColors.textColorLight,
      );

  @override
  TextStyle get bodyLarge => getBoldTextStyle(
        fontSize: ManagerFontSize.s26,
        color: ManagerColors.textColorLight,
      );

  @override
  TextStyle get bodyMedium => getBoldTextStyle(
        fontSize: ManagerFontSize.s22,
        color: ManagerColors.textColorLight,
      );

  @override
  TextStyle get bodySmall => getRegularTextStyle(
        fontSize: ManagerFontSize.s14,
        color: ManagerColors.textColorLight,
      );

  @override
  TextStyle get labelMedium => getBoldTextStyle(
        fontSize: ManagerFontSize.s20,
        color: ManagerColors.textColor,
      );
}
