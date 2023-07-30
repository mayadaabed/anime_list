import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/featuers/seasons/presentations/controller/seasons_controller.dart';
import 'package:anime_list/featuers/seasons/presentations/view/widget/season_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/main_app_bar.dart';
import '../../../../core/widgets/will_pop_scope.dart';

class SeasonsView extends StatelessWidget {
  const SeasonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: Scaffold(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        appBar: MainAppBar(
          title: ManagerStrings.season,
          hasLeading: false,
        ),
        body: GetBuilder<SeasonsController>(builder: (controller) {
          return ListView.builder(
            itemCount: controller.seasonsList.length,
            itemBuilder: (context, index) {
              return SeasonItem(
                onTap: () {
                  controller.performAnimeDetails(index);
                },
                imagePath: controller
                    .seasonsList[index].images!.jpg!.largeImageUrl
                    .toString(),
                title: controller.seasonsList[index].title.toString(),
                episode: controller.seasonsList[index].episodes.toString(),
              );
            },
          );
        }),
      ),
    );
  }
}
