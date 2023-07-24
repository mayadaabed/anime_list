import 'package:anime_list/core/widgets/main_app_bar.dart';
import 'package:anime_list/core/widgets/will_pop_scope.dart';
import 'package:anime_list/featuers/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/resources/manager_strings.dart';
import 'widget/custom_manga.dart';

class AllMangaView extends StatelessWidget {
  const AllMangaView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
        child: Scaffold(
      body: Scaffold(
        appBar: MainAppBar(
          title: ManagerStrings.allManga,
        ),
        backgroundColor: ManagerColors.backgroundColor,
        body: GetBuilder<HomeController>(builder: (controller) {
          return ListView.builder(
            padding: EdgeInsets.only(
              top: ManagerHeight.h18,
              left: ManagerWidth.w10,
              right: ManagerWidth.w10,
              bottom: ManagerHeight.h48,
            ),
            itemCount: controller.allMangaList.length,
            itemBuilder: (context, index) {
              return CustomManga(
                imagePath: controller
                    .allMangaList[index].images!.jpg!.largeImageUrl
                    .toString(),
                title: controller.allMangaList[index].titleEnglish!.toString(),
                chapters: controller.allMangaList[index].chapters!.toString(),
                date: controller.allMangaList[index].published!.string!
                    .toString(),
                rate: controller.allMangaList[index].score!.toString(),
                onTap: () {
                  controller.performMangaDetails(index);
                },
              );
            },
          );
        }),
      ),
    ));
  }
}
