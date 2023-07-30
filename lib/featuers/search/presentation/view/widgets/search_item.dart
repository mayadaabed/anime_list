import 'package:anime_list/core/resources/manager_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_strings.dart';

class SearchItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final int? index;
  final String episode;

  const SearchItem({
    Key? key,
    required this.name,
    required this.imagePath,
    this.index,
    required this.episode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ManagerHeight.h206,
      width: ManagerWidth.w205,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: ManagerHeight.h140,
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
            style: context.textTheme.displaySmall,
          ),
          Row(
            children: [
              Text(
                episode,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.titleSmall,
              ),
              SizedBox(
                width: ManagerWidth.w4,
              ),
              Text(
                ManagerStrings.episode,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.titleSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
