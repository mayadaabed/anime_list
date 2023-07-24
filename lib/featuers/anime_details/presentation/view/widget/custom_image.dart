import 'package:flutter/material.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../controller/anime_details_controller.dart';

// ignore: must_be_immutable
class CustomImage extends StatelessWidget {
  AnimeDetailsController controller;
  CustomImage({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: ManagerHeight.h375,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(ManagerRadius.r50),
          bottomRight: Radius.circular(ManagerRadius.r50),
        ),
        image: DecorationImage(
          image: controller.image(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
