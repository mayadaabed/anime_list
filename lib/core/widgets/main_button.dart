import 'package:flutter/material.dart';
import '../extentions/extentions.dart';
import '../resources/manager_sizes.dart';

Widget mainButton({
  required Widget child,
  void Function()? onPressed,
  ShapeBorder? shapeBorder,
  Color? color,
  double? minWidth,
  double? height,
  double? elevation,
}) {
  return MaterialButton(
      onPressed: onPressed.onNull(),
      shape: shapeBorder ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              ManagerRadius.r50,
            ),
          ),
      color: color.onNull(),
      minWidth: minWidth.onNull(),
      height: height.onNull(),
      elevation: elevation.onNull(),
      child: child);
}
