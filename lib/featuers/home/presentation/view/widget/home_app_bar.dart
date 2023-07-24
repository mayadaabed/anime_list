import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:anime_list/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_strings.dart';
import '../../../../../core/resources/manager_styles.dart';

AppBar homeAppBar() {
  return AppBar(
    backgroundColor: ManagerColors.backgroundColor,
    title: Row(
      children: [
        CircleAvatar(
          radius: ManagerRadius.r20,
          backgroundImage: const AssetImage(
            ManagerAssets.outBoardingImag1,
          ),
        ),
        SizedBox(
          width: ManagerWidth.w12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ManagerStrings.hello,
              style: getBoldTextStyle(
                fontSize: ManagerFontSize.s22,
                color: ManagerColors.textColor,
              ),
            ),
            Text(
              ManagerStrings.otukao,
              style: getRegularTextStyle(
                fontSize: ManagerFontSize.s22,
                color: ManagerColors.textColor,
              ),
            ),
          ],
        ),
      ],
    ),
    automaticallyImplyLeading: false,
    actions: [
      Container(
        height: ManagerHeight.h35,
        width: ManagerWidth.w35,
        decoration: BoxDecoration(
          color: ManagerColors.greyLight.withOpacity(
            ManagerOpacity.op0_5,
          ),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(Get.context!, Routes.searchView);
          },
          icon: SvgPicture.asset(
            ManagerAssets.search,
            colorFilter: const ColorFilter.mode(
              ManagerColors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
      Container(
        height: ManagerHeight.h35,
        width: ManagerWidth.w35,
        decoration: BoxDecoration(
          color: ManagerColors.greyLight.withOpacity(
            ManagerOpacity.op0_5,
          ),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            ManagerAssets.notification,
            colorFilter: const ColorFilter.mode(
              ManagerColors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    ],
  );
}
