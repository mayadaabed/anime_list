import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:anime_list/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_strings.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: context.theme.scaffoldBackgroundColor,
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
              style: context.textTheme.bodyLarge,
            ),
            Text(
              ManagerStrings.otukao,
              style: context.textTheme.titleLarge,
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
            colorFilter: ColorFilter.mode(
              context.theme.disabledColor,
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
            colorFilter: ColorFilter.mode(
              context.theme.disabledColor,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    ],
  );
}
