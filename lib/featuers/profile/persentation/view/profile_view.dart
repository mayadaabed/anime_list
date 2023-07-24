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
      backgroundColor: ManagerColors.backgroundColor,
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
                    style: getBoldTextStyle(
                      fontSize: ManagerFontSize.s20,
                      color: ManagerColors.textColor,
                    ),
                  ),
                  Text(
                    ManagerStrings.otukao,
                    style: getRegularTextStyle(
                      fontSize: ManagerFontSize.s15,
                      color: ManagerColors.textColor,
                    ),
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
              color: ManagerColors.containerColor.withOpacity(.5),
              borderRadius: BorderRadius.circular(ManagerRadius.r10),
              boxShadow: const [
                BoxShadow(
                  color: ManagerColors.black,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 5.0,
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
              const Divider(),
              CustomProfile(
                imagePath: ManagerAssets.darkMode,
                textName: ManagerStrings.appTheme,
                // onTap: () => Get.toNamed(Routes.themeView),
              ),
            ]),
          ),
          InkWell(
            onTap: () {
              controller.logout();
            },
            child: Container(
              height: ManagerHeight.h60,
              margin: EdgeInsets.symmetric(
                  horizontal: ManagerWidth.w16, vertical: ManagerHeight.h16),
              decoration: BoxDecoration(
                  color: ManagerColors.containerColor.withOpacity(.5),
                  borderRadius: BorderRadius.circular(
                    ManagerRadius.r50,
                  )),
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
