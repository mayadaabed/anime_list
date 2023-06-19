import 'package:flutter/material.dart';

import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_styles.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.name,
      required this.nameButton,
      required this.buttonColor})
      : super(key: key);

  final String name;
  final String nameButton;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ManagerWidth.w10, vertical: ManagerHeight.h20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: getBoldTextStyle(
              fontSize: ManagerFontSize.s20,
              color: ManagerColors.textColor,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              nameButton,
              style: getMediumTextStyle(
                fontSize: ManagerFontSize.s14,
                color: buttonColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
