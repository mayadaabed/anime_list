import 'package:anime_list/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/constants.dart';
import '../resources/manager_sizes.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool hasLeading;
  const MainAppBar({
    Key? key,
    required this.title,
    this.hasLeading = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Visibility(
        visible: hasLeading,
        child: Container(
          margin: EdgeInsets.only(
            left: ManagerWidth.w6,
            right: ManagerWidth.w6,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.theme.cardColor.withOpacity(
              ManagerOpacity.op0_6,
            ),
          ),
          child: Center(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: ManagerSize.s26,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
      ),
      elevation: Constants.elevation,
      iconTheme: IconThemeData(
        color: context.theme.iconTheme.color,
        size: ManagerIconSize.s36,
      ),
      backgroundColor: ManagerColors.transparent,
      title: Text(
        title,
        style: context.textTheme.titleLarge,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
