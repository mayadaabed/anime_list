import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget buildEffect(
  Widget view,
  bool enabled,
) {
  return Shimmer.fromColors(
    enabled: enabled,
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    child: view,
  );
}
