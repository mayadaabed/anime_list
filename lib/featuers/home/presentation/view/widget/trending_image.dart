import 'package:flutter/material.dart';
import '../../../../../core/resources/manager_sizes.dart';

class TrendingImage extends StatelessWidget {
  final String posterImage;
  const TrendingImage({required this.posterImage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ManagerHeight.h375,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(ManagerRadius.r50),
          bottomRight: Radius.circular(ManagerRadius.r50),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(ManagerRadius.r50),
          bottomRight: Radius.circular(ManagerRadius.r50),
        ),
        child: Image.network(
          posterImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
