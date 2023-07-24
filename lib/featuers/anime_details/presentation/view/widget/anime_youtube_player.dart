import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_strings.dart';
import '../../../../../core/resources/manager_styles.dart';
import '../../controller/anime_details_controller.dart';

class AnimeYoutbuePlayer extends StatelessWidget {
  const AnimeYoutbuePlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimeDetailsController>(builder: (controller) {
      return Padding(
        padding: EdgeInsets.only(
          left: ManagerWidth.w20,
          right: ManagerWidth.w20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ManagerStrings.trailer,
              style: getBoldTextStyle(
                fontSize: ManagerFontSize.s20,
                color: ManagerColors.textColor,
              ),
            ),
            SizedBox(
              height: ManagerHeight.h10,
            ),
            Container(
              height: ManagerHeight.h180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ManagerRadius.r20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(ManagerRadius.r20),
                child: YoutubePlayer(
                  controller: controller.youtubePlayerController,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: ManagerColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
