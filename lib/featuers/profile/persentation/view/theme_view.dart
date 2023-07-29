import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/core/widgets/main_app_bar.dart';
import 'package:anime_list/featuers/profile/persentation/view/widget/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/profile_controller.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: MainAppBar(
        title: ManagerStrings.changeTheme,
        hasLeading: true,
      ),
      body: GetBuilder<ProfileController>(builder: (controller) {
        return ListView(
          children: [
            SizedBox(
              height: ManagerHeight.h20,
            ),
            CustomTheme(
              title: ManagerStrings.light,
              value: controller.valueLight,
              onChanged: (value) {
                controller.onchanged(value);
              },
              groupValue: controller.selectedOption,
            ),
            SizedBox(
              height: ManagerHeight.h20,
            ),
            CustomTheme(
              title: ManagerStrings.dark,
              value: controller.valueDark,
              onChanged: (value) {
                controller.onchanged(value);
              },
              groupValue: controller.selectedOption,
            ),
          ],
        );
      }),
    );
  }
}
