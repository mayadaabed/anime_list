import 'package:anime_list/core/resources/manager_colors.dart';
import 'package:anime_list/core/resources/manager_fonts.dart';
import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/manager_styles.dart';
import '../../../../core/widgets/will_pop_scope.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: Scaffold(
        backgroundColor: ManagerColors.backgroundColor,
        body: Center(
            child: Text(ManagerStrings.animeXD,
                style: getBoldTextStyle(
                  fontSize: ManagerFontSize.s40,
                  color: ManagerColors.primaryColor,
                ))),
      ),
    );
  }
}
