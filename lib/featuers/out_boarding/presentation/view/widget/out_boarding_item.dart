import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/resources/manager_sizes.dart';

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
          style: context.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: ManagerHeight.h20,
        ),
        Text(
          subTitle,
          style: context.textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
