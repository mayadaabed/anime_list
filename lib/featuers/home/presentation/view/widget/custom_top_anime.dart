import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_styles.dart';
import '../../controller/home_controller.dart';

class CustomTopAnime extends StatelessWidget {
  final String name;
  final String imagePath;
  final int? index;
  final String episode;

  const CustomTopAnime({
    Key? key,
    required this.name,
    required this.imagePath,
    this.index,
    required this.episode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return GestureDetector(
        onTap: () {
          controller.selectCategory(index!);
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w4),
          height: ManagerHeight.h180,
          width: ManagerWidth.w160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ManagerHeight.h180,
                width: ManagerWidth.w160,
                decoration: BoxDecoration(
                  color: ManagerColors.white,
                  borderRadius: BorderRadius.circular(ManagerRadius.r6),
                ),
                child: imagePath.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(ManagerRadius.r6),
                        child: Image.network(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      )
                    : SvgPicture.asset(ManagerAssets.outBoardingImag1),
              ),
              SizedBox(
                height: ManagerHeight.h10,
              ),
              Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: getBoldTextStyle(
                  fontSize: ManagerFontSize.s15,
                  color: ManagerColors.textColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    episode,
                    overflow: TextOverflow.ellipsis,
                    style: getMediumTextStyle(
                      fontSize: ManagerFontSize.s12,
                      color: ManagerColors.textColor,
                    ),
                  ),
                  SizedBox(
                    width: ManagerWidth.w4,
                  ),
                  Text(
                    ManagerStrings.episode,
                    overflow: TextOverflow.ellipsis,
                    style: getMediumTextStyle(
                      fontSize: ManagerFontSize.s12,
                      color: ManagerColors.textColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
