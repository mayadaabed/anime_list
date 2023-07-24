import 'package:anime_list/core/resources/manager_fonts.dart';
import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/core/resources/manager_styles.dart';
import 'package:anime_list/core/widgets/main_app_bar.dart';
import 'package:anime_list/featuers/home/presentation/controller/home_controller.dart';
import 'package:anime_list/featuers/home/presentation/view/widget/custom_description.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/widgets/will_pop_scope.dart';
import 'widget/trending_image.dart';
import 'widget/youtube_player_widget.dart';

class TrendingAnimeDetailsView extends StatelessWidget {
  final String title;
  final String coverImage;
  final String description;
  final String averageRating;
  final int usreCount;
  final int favoritesCount;
  final String startDate;
  final String endDate;
  final String nextRelease;
  final int popularityRank;
  final int ratingRank;
  final String ageRatingGuide;
  final String posterImage;
  final String episodeCount;
  final String episodeLength;
  final String totalLength;
  final String youtubeVideoId;
  final String showType;

  const TrendingAnimeDetailsView({
    Key? key,
    required this.title,
    required this.coverImage,
    required this.description,
    required this.averageRating,
    required this.usreCount,
    required this.favoritesCount,
    required this.startDate,
    required this.endDate,
    required this.nextRelease,
    required this.popularityRank,
    required this.ratingRank,
    required this.ageRatingGuide,
    required this.posterImage,
    required this.episodeCount,
    required this.episodeLength,
    required this.totalLength,
    required this.youtubeVideoId,
    required this.showType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return willPopScope(
        child: Scaffold(
      backgroundColor: ManagerColors.backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: const MainAppBar(
        title: '',
      ),
      body: GetBuilder<HomeController>(builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TrendingImage(
                posterImage: posterImage,
              ),
              SizedBox(
                height: ManagerHeight.h16,
              ),
              CustomDescription(
                episodeCount: episodeCount,
                title: title,
                ratingRank: ratingRank.toString(),
                startDate: startDate,
                endDate: endDate,
                ageRatingGuide: ageRatingGuide,
                description: description,
              ),
              SizedBox(
                height: ManagerHeight.h30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ManagerWidth.w20,
                  right: ManagerWidth.w20,
                ),
                child: Text(
                  ManagerStrings.trailer,
                  style: getBoldTextStyle(
                    fontSize: ManagerFontSize.s20,
                    color: ManagerColors.textColor,
                  ),
                ),
              ),
              SizedBox(
                height: ManagerHeight.h20,
              ),
              const YoutubePlayerWidget(),
              SizedBox(
                height: ManagerHeight.h30,
              ),
            ],
          ),
        );
      }),
    ));
  }
}
