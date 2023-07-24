import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:anime_list/core/resources/manager_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_strings.dart';

class SeasonItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String episode;
  final Function()? onTap;
  const SeasonItem({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.episode,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: ManagerHeight.h140,
        margin: EdgeInsets.only(
          left: ManagerWidth.w12,
          right: ManagerWidth.w12,
          top: ManagerHeight.h16,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
          ManagerRadius.r14,
        )),
        child: Row(children: [
          Container(
            height: ManagerHeight.h140,
            width: ManagerHeight.h160,
            decoration: BoxDecoration(
              color: ManagerColors.white,
              borderRadius: BorderRadius.circular(ManagerRadius.r20),
            ),
            child: imagePath.isNotEmpty
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(ManagerRadius.r20),
                    child: Image.network(
                      imagePath,
                      fit: BoxFit.fill,
                    ),
                  )
                : SvgPicture.asset(ManagerAssets.outBoardingImag1),
          ),
          SizedBox(
            width: ManagerWidth.w10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: ManagerWidth.w160,
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: getBoldTextStyle(
                    fontSize: ManagerSize.s16,
                    color: ManagerColors.textColor,
                  ),
                ),
              ),
              SizedBox(
                height: ManagerHeight.h10,
              ),
              Row(
                children: [
                  Text(
                    episode,
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
                    style: getMediumTextStyle(
                      fontSize: ManagerFontSize.s12,
                      color: ManagerColors.textColor,
                    ),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
