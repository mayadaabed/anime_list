import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget buildEffect({
  required Widget view,
}) {
  return Shimmer.fromColors(
    enabled: true,
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    child: view,
  );
}
