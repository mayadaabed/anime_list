import 'package:flutter/material.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_styles.dart';

// ignore: must_be_immutable
class OutBoardingItem extends StatelessWidget {
  String image;
  String title;
  String subTitle;

  OutBoardingItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: ManagerRadius.r180,
          backgroundImage: AssetImage(
            image,
          ),
        ),
        SizedBox(
          height: ManagerHeight.h50,
        ),
        Text(
          title,
          style: getBoldTextStyle(
            fontSize: ManagerFontSize.s28,
            color: ManagerColors.textColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: ManagerHeight.h20,
        ),
        Text(
          subTitle,
          style: getRegularTextStyle(
            fontSize: ManagerFontSize.s14,
            color: ManagerColors.textColorLight,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
