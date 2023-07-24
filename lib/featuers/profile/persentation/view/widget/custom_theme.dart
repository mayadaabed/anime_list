import 'package:flutter/material.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_styles.dart';

class CustomTheme extends StatelessWidget {
  final String title;
  final String value;
  const CustomTheme({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: ManagerWidth.w24,
        left: ManagerWidth.w24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: getRegularTextStyle(
              fontSize: ManagerFontSize.s16,
              color: ManagerColors.textColor,
            ),
          ),
          Radio.adaptive(
            value: true,
            groupValue: '',
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
