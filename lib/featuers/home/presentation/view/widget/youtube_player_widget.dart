import 'package:anime_list/core/resources/manager_colors.dart';
import 'package:anime_list/featuers/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../../../core/resources/manager_sizes.dart';

class YoutubePlayerWidget extends StatelessWidget {
  const YoutubePlayerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Container(
        height: ManagerHeight.h180,
        margin: EdgeInsets.only(
          left: ManagerWidth.w20,
          right: ManagerWidth.w20,
        ),
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
      );
    });
  }
}
