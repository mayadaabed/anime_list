import 'package:flutter/cupertino.dart';

Widget willPopScope({
  required Widget child,
  WillPopCallback? onWillPop,
}) {
  return WillPopScope(
    onWillPop: onWillPop ?? () async => false,
    child: child,
  );
}
