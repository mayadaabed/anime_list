import 'package:anime_list/core/resources/manager_colors.dart';
import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/featuers/home/presentation/view/widget/custom_banner.dart';
import 'package:anime_list/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/will_pop_scope.dart';
import '../controller/home_controller.dart';
import 'widget/custom_manga.dart';
import 'widget/custom_top_anime.dart';
import 'widget/custom_text.dart';
import 'widget/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: Scaffold(
        backgroundColor: ManagerColors.backgroundColor,
        appBar: homeAppBar(),
        body: GetBuilder<HomeController>(builder: (controller) {
          return ListView(
            children: [
              SizedBox(
                height: ManagerHeight.h30,
              ),
              const CustomBanner(),
              CustomText(
                name: ManagerStrings.topAnime,
                buttonColor: ManagerColors.primaryColor,
                nameButton: ManagerStrings.seeAll,
                onPressed: () {
                  controller.goTo(Routes.allAnimeView);
                },
              ),
              SizedBox(
                width: double.infinity,
                height: ManagerHeight.h250,
                child: ListView.builder(
                  itemCount: controller.trendingAnimeList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomTopAnime(
                      name: controller.trendingAnimeList[index]
                          .attributesResponse!.canonicalTitle
                          .toString(),
                      imagePath: controller.trendingAnimeList[index]
                          .attributesResponse!.posterImage!.large
                          .toString(),
                      episode: controller.trendingAnimeList[index]
                          .attributesResponse!.episodeCount!
                          .toString(),
                      onTap: () {
                        controller.performTrendingAnimeDetails(index);
                      },
                    );
                  },
                ),
              ),
              CustomText(
                name: ManagerStrings.manga,
                buttonColor: ManagerColors.primaryColor,
                nameButton: ManagerStrings.seeAll,
                onPressed: () {
                  controller.goTo(Routes.allMangaView);
                },
              ),
              SizedBox(
                height: ManagerHeight.h500,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.mangaList.length,
                  itemBuilder: (context, index) {
                    return CustomManga(
                      imagePath: controller
                          .mangaList[index].images!.jpg!.largeImageUrl
                          .toString(),
                      title: controller
                          .mangaList[index].mangaTitles![index].title!
                          .toString(),
                      chapters:
                          controller.mangaList[index].chapters!.toString(),
                      date: controller.mangaList[index].published!.string!
                          .toString(),
                      rate: controller.mangaList[index].score!.toString(),
                      onTap: () {
                        controller.performMangaDetails(index);
                      },
                    );
                  },
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
