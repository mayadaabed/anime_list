import 'package:anime_list/core/resources/manager_colors.dart';
import 'package:anime_list/featuers/home/presentation/view/widget/custom_banner.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/will_pop_scope.dart';
import 'widget/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: Scaffold(
        backgroundColor: ManagerColors.backgroundColor,
        appBar: homeAppBar(),
        body: ListView(
          children: [
            CustomBanner(),
          ],
        ),
      ),
    );
  }
}
