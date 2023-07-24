import 'package:anime_list/core/resources/manager_colors.dart';
import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/core/widgets/main_app_bar.dart';
import 'package:anime_list/featuers/profile/persentation/view/widget/custom_theme.dart';
import 'package:flutter/material.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManagerColors.backgroundColor,
      appBar: MainAppBar(
        title: ManagerStrings.darkMode,
        hasLeading: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: ManagerHeight.h20,
          ),
          CustomTheme(
            title: ManagerStrings.on,
            value: '',
          ),
          SizedBox(
            height: ManagerHeight.h20,
          ),
          CustomTheme(
            title: ManagerStrings.off,
            value: '',
          ),
        ],
      ),
    );
  }
}
