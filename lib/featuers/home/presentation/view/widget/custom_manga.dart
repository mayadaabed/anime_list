import 'package:flutter/material.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_strings.dart';
import '../../../../../core/resources/manager_styles.dart';

class CustomManga extends StatelessWidget {
  final void Function()? onTap;
  final String imagePath;
  final String title;
  final String chapters;
  final String date;
  final String rate;
  const CustomManga({
    Key? key,
    this.onTap,
    required this.imagePath,
    required this.title,
    required this.chapters,
    required this.date,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ManagerWidth.w10,
          vertical: ManagerHeight.h10,
        ),
        width: double.infinity,
        height: ManagerHeight.h130,
        decoration: BoxDecoration(
          color: ManagerColors.backgroundColor,
          borderRadius: BorderRadius.circular(
            ManagerRadius.r10,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(ManagerRadius.r10),
              child: Image.network(
                imagePath,
                width: ManagerWidth.w100,
                height: ManagerHeight.h130,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: ManagerWidth.w20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: ManagerWidth.w205,
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: getBoldTextStyle(
                      fontSize: ManagerFontSize.s20,
                      color: ManagerColors.textColor,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      chapters,
                      style: getMediumTextStyle(
                        fontSize: ManagerFontSize.s16,
                        color: ManagerColors.textColor,
                      ),
                    ),
                    SizedBox(
                      width: ManagerWidth.w6,
                    ),
                    Text(
                      ManagerStrings.chapters,
                      style: getMediumTextStyle(
                        fontSize: ManagerFontSize.s14,
                        color: ManagerColors.textColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h10,
                ),
                const Spacer(),
                Text(
                  date,
                  style: getMediumTextStyle(
                    fontSize: ManagerFontSize.s12,
                    color: ManagerColors.textColor,
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: ManagerColors.starColor,
                      size: ManagerSize.s20,
                    ),
                    SizedBox(
                      width: ManagerWidth.w6,
                    ),
                    Text(
                      rate,
                      style: getMediumTextStyle(
                        fontSize: ManagerFontSize.s14,
                        color: ManagerColors.textColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
