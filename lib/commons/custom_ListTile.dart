import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dynamicFontSize.dart';
import 'heigh_sized_box.dart';

Widget customListTile({
  required String leadingImage,
  required double imageHeight,
  required String titleText,
  required double titleFont,
  required double verticalSpaceHeight,
  required subtitleText,
  required subtitleFont,
  required bool hasIcon,
  double iconSize = 0,
}) {
  return ListTile(
    leading: Image.asset(
      leadingImage,
      height: imageHeight,
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DynamicFontSize(
          label: titleText,
          fontSize: titleFont,
        ),
        VerticalSpace(5),
        DynamicFontSize(
          label: subtitleText,
          fontSize: subtitleFont,
          color: Color.fromRGBO(134, 142, 150, 1),
        ),
      ],
    ),
    trailing: hasIcon
        ? Icon(
            Icons.star,
            color: Colors.yellow,
            size: hasIcon ? iconSize : 0,
          )
        : null,
  );
}
