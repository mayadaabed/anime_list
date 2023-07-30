import 'package:anime_list/core/resources/manager_colors.dart';
import 'package:anime_list/core/widgets/main_app_bar.dart';
import 'package:anime_list/featuers/profile/persentation/controller/profile_controller.dart';
import 'package:anime_list/featuers/profile/persentation/view/widget/custom_photo.dart';
import 'package:anime_list/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_fonts.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_styles.dart';
import 'widget/custom_profile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: MainAppBar(
        title: ManagerStrings.profile,
        hasLeading: false,
      ),
      body: GetBuilder<ProfileController>(builder: (controller) {
        return ListView(children: [
          Row(
            children: [
              SizedBox(
                width: ManagerWidth.w12,
              ),
              const CustomPhoto(),
              SizedBox(
                width: ManagerWidth.w12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ManagerStrings.otukao,
                    style: context.textTheme.titleLarge,
                  ),
                  Text(
                    ManagerStrings.otukao,
                    style: context.textTheme.titleMedium,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: ManagerHeight.h20,
          ),
          Container(
            decoration: BoxDecoration(
              color: context.theme.cardColor,
              borderRadius: BorderRadius.circular(ManagerRadius.r10),
              boxShadow: [
                BoxShadow(
                  color: context.theme.shadowColor,
                  offset: const Offset(0.0, 2.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(
              horizontal: ManagerWidth.w16,
              vertical: ManagerHeight.h16,
            ),
            padding: EdgeInsets.only(
              right: ManagerWidth.w10,
              left: ManagerWidth.w10,
            ),
            child: Column(children: [
              CustomProfile(
                imagePath: ManagerAssets.language,
                textName: ManagerStrings.changeLanguage,
                onTap: () => Get.toNamed(Routes.localeView),
              ),
              Divider(
                color: context.theme.dividerColor,
              ),
              CustomProfile(
                imagePath: ManagerAssets.darkMode,
                textName: ManagerStrings.appTheme,
                onTap: () => Get.toNamed(Routes.themeView),
              ),
            ]),
          ),
          InkWell(
            onTap: () {
              controller.logout(context);
            },
            child: Container(
              height: ManagerHeight.h60,
              margin: EdgeInsets.symmetric(
                  horizontal: ManagerWidth.w16, vertical: ManagerHeight.h16),
              decoration: BoxDecoration(
                color: context.theme.cardColor,
                borderRadius: BorderRadius.circular(
                  ManagerRadius.r50,
                ),
                boxShadow: [
                  BoxShadow(
                    color: context.theme.shadowColor,
                    offset: const Offset(0.0, 2.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(children: [
                Container(
                  width: ManagerWidth.w40,
                  height: ManagerHeight.h40,
                  margin: EdgeInsets.symmetric(
                      horizontal: ManagerWidth.w14,
                      vertical: ManagerHeight.h16),
                  padding: EdgeInsets.symmetric(
                      horizontal: ManagerWidth.w4, vertical: ManagerHeight.h4),
                  child: SvgPicture.asset(
                    ManagerAssets.logout,
                    colorFilter: const ColorFilter.mode(
                      ManagerColors.red,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                Text(
                  ManagerStrings.logout,
                  style: getRegularTextStyle(
                      fontSize: ManagerFontSize.s16, color: ManagerColors.red),
                ),
              ]),
            ),
          )
        ]);
      }),
    );
  }
}
