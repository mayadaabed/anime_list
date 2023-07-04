import 'package:flutter/material.dart';
import '../extentions/extentions.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_sizes.dart';
import '../resources/manager_styles.dart';

TextFormField baseTextFormField({
  required TextEditingController controller,
  String? hintText,
  TextInputType? keyboardType,
  bool? obscureText,
  validator,
  FocusNode? focusNode,
  onChange,
  IconData? prefixIcon,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    cursorColor: ManagerColors.primaryColor,
    style: const TextStyle(
      color: ManagerColors.white,
    ),
    obscureText: obscureText.onNull(),
    validator: validator,
    decoration: InputDecoration(
      filled: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: ManagerWidth.w16,
        vertical: ManagerHeight.h6,
      ),
      fillColor: ManagerColors.backgroundColor,
      hintText: hintText.onNull(),
      hintStyle: getRegularTextStyle(
        fontSize: ManagerFontSize.s16,
        color: ManagerColors.greyLight,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ManagerColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(
          ManagerRadius.r26,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ManagerColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(
          ManagerRadius.r26,
        ),
      ),
      prefixIcon: Icon(
        prefixIcon,
        color: ManagerColors.greyLight,
      ),
    ),
    focusNode: focusNode,
    onChanged: onChange ?? (val) {},
  );
}
