import 'package:anime_list/core/widgets/main_app_bar.dart';
import 'package:anime_list/core/widgets/will_pop_scope.dart';
import 'package:anime_list/featuers/anime_details/presentation/controller/anime_details_controller.dart';
import 'package:anime_list/featuers/anime_details/presentation/view/widget/anime_youtube_player.dart';
import 'package:anime_list/featuers/anime_details/presentation/view/widget/custom_decription.dart';
import 'package:anime_list/featuers/anime_details/presentation/view/widget/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/resources/manager_strings.dart';

class AnimeDetailsView extends StatelessWidget {
  const AnimeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      onWillPop: () async {
        Get.delete<AnimeDetailsController>();
        return true;
      },
      child: GetBuilder<AnimeDetailsController>(builder: (controller) {
        return Scaffold(
            backgroundColor: context.theme.scaffoldBackgroundColor,
            appBar: const MainAppBar(
              title: '',
              hasLeading: true,
            ),
            extendBodyBehindAppBar: true,
            body: RefreshIndicator(
              color: context.theme.primaryColor,
              backgroundColor: context.theme.scaffoldBackgroundColor,
              onRefresh: () async {
                await controller.animeDetails();
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomImage(
                      controller: controller,
                    ),
                    SizedBox(
                      height: ManagerHeight.h20,
                    ),
                    CustomDescription(
                      title: controller.title,
                      startDate: controller.startDate,
                      episode: controller.episodeCount.toString(),
                      averageRating: controller.averageRating.toString(),
                      description: controller.description,
                      background: controller.background,
                      type: ManagerStrings.episode,
                    ),
                    SizedBox(
                      height: ManagerHeight.h20,
                    ),
                    Visibility(
                        visible:
                            controller.youtubeVideoId.isEmpty ? false : true,
                        child: const AnimeYoutbuePlayer()),
                    SizedBox(
                      height: ManagerHeight.h50,
                    ),
                  ],
                ),
              ),
            ));
      }),
    );
  }
}
