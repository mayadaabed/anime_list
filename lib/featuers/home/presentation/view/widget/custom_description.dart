import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_strings.dart';

class CustomDescription extends StatelessWidget {
  final String episodeCount;
  final String title;
  final String ratingRank;
  final String startDate;
  final String endDate;
  final String ageRatingGuide;
  final String description;
  const CustomDescription({
    Key? key,
    required this.episodeCount,
    required this.title,
    required this.ratingRank,
    required this.startDate,
    required this.endDate,
    required this.ageRatingGuide,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: ManagerWidth.w20,
            right: ManagerWidth.w20,
          ),
          child: Row(
            children: [
              Text(
                episodeCount,
                style: context.textTheme.titleSmall,
              ),
              SizedBox(
                width: ManagerWidth.w6,
              ),
              Text(
                ManagerStrings.episode,
                style: context.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        SizedBox(
          height: ManagerHeight.h8,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: ManagerWidth.w20,
            right: ManagerWidth.w20,
          ),
          child: Text(
            title,
            style: context.textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: ManagerHeight.h6,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: ManagerWidth.w20,
            right: ManagerWidth.w20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star_rate_rounded,
                color: ManagerColors.starColor,
              ),
              Text(
                ratingRank.toString(),
                style: context.textTheme.titleSmall,
              ),
              SizedBox(
                width: ManagerWidth.w20,
              ),
              Text(
                '$startDate |',
                style: context.textTheme.titleSmall,
              ),
              SizedBox(
                width: ManagerWidth.w6,
              ),
              Text(
                endDate.isEmpty ? 'now' : endDate.toString(),
                style: context.textTheme.titleSmall,
              ),
              SizedBox(
                width: ManagerWidth.w20,
              ),
            ],
          ),
        ),
        SizedBox(
          height: ManagerHeight.h10,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: ManagerWidth.w20,
            right: ManagerWidth.w20,
          ),
          child: Row(
            children: [
              Text(
                ManagerStrings.rating,
                style: context.textTheme.titleMedium,
              ),
              Text(
                ageRatingGuide,
                style: context.textTheme.titleMedium,
              ),
            ],
          ),
        ),
        SizedBox(
          height: ManagerHeight.h6,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: ManagerWidth.w20,
            right: ManagerWidth.w20,
          ),
          child: ReadMoreText(
            description,
            trimLines: 2,
            colorClickableText: context.theme.primaryColor,
            style: context.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
