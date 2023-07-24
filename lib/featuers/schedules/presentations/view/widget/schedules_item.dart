import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/core/resources/manager_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';

class SchedulesItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final int? index;
  final String? streaming;
  final Function()? onTap;

  const SchedulesItem({
    Key? key,
    required this.name,
    required this.imagePath,
    this.index,
    this.streaming,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: ManagerHeight.h140,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
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
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ManagerColors.black.withOpacity(ManagerOpacity.op0_3),
                borderRadius: BorderRadius.circular(ManagerRadius.r20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: ManagerWidth.w10,
                right: ManagerWidth.w10,
                bottom: ManagerHeight.h20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    name,
                    style: getBoldTextStyle(
                      fontSize: ManagerFontSize.s16,
                      color: ManagerColors.textColor,
                    ),
                  ),
                  Text(
                    ManagerStrings.date,
                    style: getMediumTextStyle(
                      fontSize: ManagerFontSize.s15,
                      color: ManagerColors.textColor,
                    ),
                  ),
                  Text(
                    streaming!,
                    style: getMediumTextStyle(
                      fontSize: ManagerFontSize.s15,
                      color: ManagerColors.textColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
