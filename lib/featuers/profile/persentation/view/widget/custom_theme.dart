import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/resources/manager_sizes.dart';

// ignore: must_be_immutable
class CustomTheme extends StatelessWidget {
  final String title;
  final int value;
  var onChanged;
  final int groupValue;
  CustomTheme({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
    required this.groupValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Padding(
        padding: EdgeInsets.only(
          right: ManagerWidth.w24,
          left: ManagerWidth.w24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.textTheme.displaySmall,
            ),
            Radio.adaptive(
              value: value,
              groupValue: groupValue,
              activeColor: context.theme.primaryColor,
              onChanged: onChanged ?? (val) {},
            )
          ],
        ),
      ),
    );
  }
}
