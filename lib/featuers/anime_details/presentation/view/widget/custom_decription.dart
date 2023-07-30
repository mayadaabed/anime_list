import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_strings.dart';

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
            style: context.textTheme.titleLarge,
          ),
          SizedBox(
            height: ManagerHeight.h10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                startDate,
                style: context.textTheme.headlineSmall,
              ),
              SizedBox(
                width: ManagerWidth.w6,
              ),
              Text(
                '.',
                style: context.textTheme.headlineSmall,
              ),
              SizedBox(
                width: ManagerWidth.w6,
              ),
              Text(
                episode,
                style: context.textTheme.headlineSmall,
              ),
              SizedBox(
                width: ManagerWidth.w4,
              ),
              Text(
                type,
                style: context.textTheme.headlineSmall,
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
                style: context.textTheme.headlineSmall,
              ),
            ],
          ),
          SizedBox(
            height: ManagerHeight.h20,
          ),
          Text(
            ManagerStrings.story,
            style: context.textTheme.titleLarge,
          ),
          ReadMoreText(
            description,
            trimLines: 2,
            colorClickableText: context.theme.primaryColor,
            style: context.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
