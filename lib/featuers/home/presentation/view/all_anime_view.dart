import 'package:anime_list/core/widgets/will_pop_scope.dart';
import 'package:anime_list/featuers/home/presentation/controller/home_controller.dart';
import 'package:anime_list/featuers/home/presentation/view/widget/custom_top_anime.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/widgets/main_app_bar.dart';

class AllAnimeView extends StatelessWidget {
  const AllAnimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
        child: Scaffold(
      appBar: MainAppBar(
        title: ManagerStrings.allAnime,
      ),
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: GetBuilder<HomeController>(builder: (controller) {
        return GridView.builder(
          padding: EdgeInsets.only(
            top: ManagerHeight.h18,
            left: ManagerWidth.w10,
            right: ManagerWidth.w10,
            bottom: ManagerHeight.h48,
          ),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .9 / 1.1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 22),
          itemCount: controller.allAnimeList.length,
          itemBuilder: (context, index) {
            return CustomTopAnime(
              episode: controller
                  .allAnimeList[index].attributesResponse!.episodeCount!
                  .toString(),
              imagePath: controller
                  .allAnimeList[index].attributesResponse!.posterImage!.large!
                  .toString(),
              name: controller
                  .allAnimeList[index].attributesResponse!.titles!.en
                  .toString(),
              onTap: () {
                controller.performAllAnime(index);
              },
            );
          },
        );
      }),
    ));
  }
}
