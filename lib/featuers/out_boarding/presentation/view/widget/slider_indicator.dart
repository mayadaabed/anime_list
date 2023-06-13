import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/constants.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../controller/out_boarding_controller.dart';

class SliderIndicator extends StatelessWidget {
  const SliderIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OutBoardingController>(builder: (controller) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w140),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ManagerColors.greyLight,
        ),
        width: double.infinity,
        height: ManagerHeight.h10,
        child: Row(
          children: [
            ...List.generate(
              Constants.sliderItems,
              (index) => Expanded(
                child: AnimatedContainer(
                  duration: const Duration(
                    seconds: Constants.outBoardingDurationTime,
                  ),
                  curve: Curves.fastLinearToSlowEaseIn,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: controller.currentPage == index
                        ? ManagerColors.primaryColor
                        : ManagerColors.greyLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
