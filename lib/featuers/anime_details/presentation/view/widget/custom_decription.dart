import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_strings.dart';
import '../../../../../core/resources/manager_styles.dart';

class CustomDescription extends StatelessWidget {
  final String title;
  final String startDate;
  final String episode;
  final String averageRating;
  final String description;
  final String background;
  final String type;
  const CustomDescription({
    Key? key,
    required this.title,
    required this.startDate,
    required this.episode,
    required this.averageRating,
    required this.description,
    required this.background,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ManagerWidth.w20,
        right: ManagerWidth.w20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: getBoldTextStyle(
              fontSize: ManagerFontSize.s18,
              color: ManagerColors.textColor,
            ),
          ),
          SizedBox(
            height: ManagerHeight.h10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                startDate,
                style: getRegularTextStyle(
                  fontSize: ManagerFontSize.s14,
                  color: ManagerColors.greyLight,
                ),
              ),
              SizedBox(
                width: ManagerWidth.w6,
              ),
              Text(
                '.',
                style: getRegularTextStyle(
                  fontSize: ManagerFontSize.s14,
                  color: ManagerColors.greyLight,
                ),
              ),
              SizedBox(
                width: ManagerWidth.w6,
              ),
              Text(
                episode,
                style: getRegularTextStyle(
                  fontSize: ManagerFontSize.s14,
                  color: ManagerColors.greyLight,
                ),
              ),
              SizedBox(
                width: ManagerWidth.w4,
              ),
              Text(
                type,
                style: getRegularTextStyle(
                  fontSize: ManagerFontSize.s14,
                  color: ManagerColors.greyLight,
                ),
              ),
            ],
          ),
          SizedBox(
            height: ManagerHeight.h10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star_rate_rounded,
                color: ManagerColors.starColor,
              ),
              SizedBox(
                width: ManagerWidth.w4,
              ),
              Text(
                averageRating.toString(),
                style: getRegularTextStyle(
                  fontSize: ManagerFontSize.s14,
                  color: ManagerColors.greyLight,
                ),
              ),
            ],
          ),
          SizedBox(
            height: ManagerHeight.h20,
          ),
          Text(
            ManagerStrings.story,
            style: getBoldTextStyle(
              fontSize: ManagerFontSize.s16,
              color: ManagerColors.textColor,
            ),
          ),
          ReadMoreText(
            description,
            trimLines: 2,
            colorClickableText: ManagerColors.primaryColor,
            style: getRegularTextStyle(
              fontSize: ManagerFontSize.s14,
              color: ManagerColors.greyLight,
            ),
          ),
        ],
      ),
    );
  }
}
