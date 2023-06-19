import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_strings.dart';
import '../../../../../core/resources/manager_styles.dart';
import '../../controller/home_controller.dart';

class CustomManga extends StatelessWidget {
  final void Function()? onTap;
  final int index;
  const CustomManga({Key? key, this.onTap, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
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
                  controller.mangaList[index].images!.jpg!.largeImageUrl
                      .toString(),
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
                  Text(
                    controller.mangaList[index].titleEnglish!.toString(),
                    style: getBoldTextStyle(
                      fontSize: ManagerFontSize.s20,
                      color: ManagerColors.textColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        controller.mangaList[index].chapters!.toString(),
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
                  Text(
                    '',
                    style: getMediumTextStyle(
                      fontSize: ManagerFontSize.s12,
                      color: ManagerColors.primaryColor,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(
                  top: ManagerHeight.h10,
                  right: ManagerWidth.w10,
                  bottom: ManagerHeight.h10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
