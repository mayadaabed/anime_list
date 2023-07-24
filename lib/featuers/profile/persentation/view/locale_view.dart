import 'package:anime_list/core/resources/manager_fonts.dart';
import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:anime_list/core/resources/manager_styles.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:anime_list/core/extentions/extentions.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/widgets/main_app_bar.dart';
import '../controller/locale_notifier_controller.dart';

class LocaleView extends StatelessWidget {
  const LocaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManagerColors.backgroundColor,
      appBar: MainAppBar(
        title: ManagerStrings.changeLanguage,
        hasLeading: true,
      ),
      body: GetBuilder<LocaleNotifierController>(builder: (controller) {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: ManagerWidth.w20,
          ),
          child: SizedBox(
            height: ManagerHeight.h100,
            width: double.infinity,
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: ManagerColors.black,
                  ),
                ),
                customButton: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.language,
                      size: ManagerIconSize.s24,
                      color: ManagerColors.white,
                    ),
                    SizedBox(
                      width: ManagerWidth.w10,
                    ),
                    Text(
                      ManagerStrings.language,
                      style: getMediumTextStyle(
                        fontSize: ManagerFontSize.s16,
                        color: ManagerColors.textColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      controller.languageList[controller.currentLanguage]
                          .onNull(),
                      style: getMediumTextStyle(
                        fontSize: ManagerFontSize.s16,
                        color: ManagerColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: ManagerWidth.w10,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: ManagerIconSize.s24,
                      color: ManagerColors.white,
                    ),
                  ],
                ),
                items: controller.languageList.values.map((value) {
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: getTextStyle(
                          fontSize: ManagerFontSize.s18,
                          color: ManagerColors.textColor,
                          weight: FontWeight.bold,
                        ),
                      ));
                }).toList(),
                isExpanded: true,
                value: controller.languageList[controller.currentLanguage],
                onChanged: (value) {
                  for (var entry in controller.languageList.entries) {
                    if (entry.value == value) {
                      controller.changeLanguage(
                        context: context,
                        langCode: entry.key,
                      );
                    }
                  }
                },
              ),
            ),
          ),
        );
      }),
    );
  }
}
