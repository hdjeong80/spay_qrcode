import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dynamicFontSize.dart';

Widget customContainer(
    {required double height,
    required double width,
    required double radius,
    required Color color,
    required Widget widget}) {
  return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
      child: widget);
}
