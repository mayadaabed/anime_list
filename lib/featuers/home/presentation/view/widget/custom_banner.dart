import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../../../core/cache/cache.dart';
import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_styles.dart';
import '../../controller/home_controller.dart';
import '../trending_anime_details_view.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return CarouselSlider(
          carouselController: controller.carouselController,
          options: CarouselOptions(
            enlargeCenterPage: true,
            scrollPhysics: const BouncingScrollPhysics(),
            viewportFraction: 0.85,
            autoPlay: true,
            height: ManagerHeight.h250,
            onPageChanged: (index, reason) {
              controller.change(index);
            },
          ),
          items: controller.trendingAnimeList.map((i) {
            return InkWell(
              onTap: () {
                CacheData().setYoutybeViedoId(
                    i.attributesResponse!.youtubeVideoId!.toString());
                controller.youtubePlayerController = YoutubePlayerController(
                  initialVideoId: i.attributesResponse!.youtubeVideoId!,
                  flags: const YoutubePlayerFlags(
                    mute: false,
                    autoPlay: false,
                    disableDragSeek: false,
                    loop: false,
                    isLive: false,
                    forceHD: false,
                    enableCaption: true,
                  ),
                );
                Get.to(() => TrendingAnimeDetailsView(
                      title: i.attributesResponse!.titles!.en.toString(),
                      coverImage:
                          i.attributesResponse!.coverImage!.large.toString(),
                      description:
                          i.attributesResponse!.description!.toString(),
                      averageRating:
                          i.attributesResponse!.averageRating!.toString(),
                      usreCount: i.attributesResponse!.userCount!,
                      favoritesCount: i.attributesResponse!.favoritesCount!,
                      startDate: i.attributesResponse!.startDate!,
                      endDate: i.attributesResponse!.endDate!,
                      nextRelease: i.attributesResponse!.nextRelease!,
                      popularityRank: i.attributesResponse!.popularityRank!,
                      ratingRank: i.attributesResponse!.ratingRank!,
                      ageRatingGuide: i.attributesResponse!.ageRatingGuide!,
                      posterImage: i.attributesResponse!.posterImage!.large!,
                      episodeCount:
                          i.attributesResponse!.episodeCount!.toString(),
                      episodeLength:
                          i.attributesResponse!.episodeLength!.toString(),
                      totalLength:
                          i.attributesResponse!.totalLength!.toString(),
                      youtubeVideoId: i.attributesResponse!.youtubeVideoId!,
                      showType: i.attributesResponse!.showType!,
                    ));
              },
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: ManagerWidth.w10,
                      vertical: ManagerHeight.h10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ManagerRadius.r14),
                      image: DecorationImage(
                        image: i.attributesResponse!.posterImage!.large
                                .toString()
                                .isNotEmpty
                            ? NetworkImage(i
                                .attributesResponse!.posterImage!.large
                                .toString())
                            : const AssetImage(ManagerAssets.outBoardingImag3)
                                as ImageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: ManagerWidth.w10,
                      vertical: ManagerHeight.h10,
                    ),
                    decoration: BoxDecoration(
                      color: ManagerColors.black.withOpacity(
                        ManagerOpacity.op0_2,
                      ),
                      borderRadius: BorderRadius.circular(ManagerRadius.r14),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          i.attributesResponse!.canonicalTitle.toString(),
                          style: getBoldTextStyle(
                            fontSize: ManagerFontSize.s16,
                            color: ManagerColors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ...List.generate(
                              controller.trendingAnimeList.length,
                              (index) => Container(
                                width: ManagerWidth.w8,
                                height: ManagerHeight.h8,
                                margin: EdgeInsets.only(left: ManagerWidth.w2),
                                decoration: BoxDecoration(
                                  color: controller.current == index
                                      ? ManagerColors.primaryColor
                                      : ManagerColors.primaryColor.withOpacity(
                                          ManagerOpacity.op0_5,
                                        ),
                                  borderRadius: BorderRadius.circular(
                                    ManagerRadius.r10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
