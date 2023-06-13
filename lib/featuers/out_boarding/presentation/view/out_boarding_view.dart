import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_fonts.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_styles.dart';
import '../../../../core/widgets/main_button.dart';
import '../controller/out_boarding_controller.dart';
import 'widget/slider_indicator.dart';

class OutBoardingView extends StatelessWidget {
  const OutBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ManagerColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ManagerWidth.w16,
            vertical: ManagerHeight.h10,
          ),
          child: GetBuilder<OutBoardingController>(builder: (controller) {
            return Column(
              children: [
                Visibility(
                  visible: controller.isNotLastedPage(),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                  child: Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: mainButton(
                        onPressed: () {
                          controller.skipPage();
                        },
                        child: Text(
                          ManagerStrings.skip,
                          style: getRegularTextStyle(
                              fontSize: ManagerFontSize.s14,
                              color: ManagerColors.textColor),
                        ),
                      )),
                ),
                SizedBox(
                  height: ManagerHeight.h20,
                ),
                Expanded(
                  child: PageView(
                    controller: controller.pageController,
                    children: [...controller.pageViewItems],
                    onPageChanged: (index) {
                      controller.setCurrentPage(index);
                    },
                  ),
                ),
                SizedBox(height: ManagerHeight.h20),
                mainButton(
                    onPressed: () {
                      controller.getStart();
                    },
                    color: ManagerColors.primaryColor,
                    minWidth: double.infinity,
                    height: ManagerHeight.h54,
                    child: Text(
                      ManagerStrings.getStartButton,
                      style: getBoldTextStyle(
                        fontSize: ManagerFontSize.s18,
                        color: ManagerColors.black,
                      ),
                    )),
                SizedBox(
                  height: ManagerHeight.h20,
                ),
                const SliderIndicator(),
                SizedBox(
                  height: ManagerHeight.h20,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
