import 'package:flutter/material.dart';

import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manager_sizes.dart';

class CustomPhoto extends StatelessWidget {
  const CustomPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: ManagerRadius.r50,
      backgroundImage: const AssetImage(ManagerAssets.outBoardingImag1),
    );
  }
}
