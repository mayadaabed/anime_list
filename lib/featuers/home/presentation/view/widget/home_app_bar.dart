import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_strings.dart';
import '../../../../../core/resources/manager_styles.dart';

AppBar homeAppBar() {
  return AppBar(
    backgroundColor: ManagerColors.backgroundColor,
    title: Text(
      ManagerStrings.animeXD,
      style: getRegularTextStyle(
        fontSize: ManagerFontSize.s22,
        color: ManagerColors.primaryColor,
      ),
    ),
    automaticallyImplyLeading: false,
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          ManagerAssets.search,
          colorFilter: const ColorFilter.mode(
            ManagerColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          ManagerAssets.notification,
          colorFilter: const ColorFilter.mode(
            ManagerColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
      CircleAvatar(
        radius: ManagerRadius.r14,
        backgroundImage: const AssetImage(
          ManagerAssets.outBoardingImag1,
        ),
      )
    ],
  );
}
