import 'package:flutter/material.dart';

import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_sizes.dart';

class SearchShimmer extends StatelessWidget {
  const SearchShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(
        left: ManagerWidth.w10,
        right: ManagerWidth.w10,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .9,
          crossAxisSpacing: 10,
          mainAxisSpacing: 22),
      itemCount: 5,
      itemBuilder: (context, index) {
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
              ),
              SizedBox(
                height: ManagerHeight.h10,
              ),
              Container(
                width: ManagerWidth.w128,
                height: 8.0,
                decoration: BoxDecoration(
                  color: ManagerColors.white,
                  borderRadius: BorderRadius.circular(ManagerRadius.r6),
                ),
              ),
              SizedBox(
                height: ManagerHeight.h10,
              ),
              Container(
                width: ManagerWidth.w100,
                height: 8.0,
                decoration: BoxDecoration(
                  color: ManagerColors.white,
                  borderRadius: BorderRadius.circular(ManagerRadius.r6),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
