import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_container.dart';
import 'dynamicFontSize.dart';
import 'heigh_sized_box.dart';

class CustomTile extends StatelessWidget {
  final Color containerColor;
  final String firstText;
  final Color firstTextColor;
  final String secondText;
  final Color secondTextColor;
  final String thirdText;
  final Color thirdTextColor;
  final String fourthText;
  final Color fourthTextColor;
  final Color iconColor;
  final bool isFour;

  CustomTile({
    required this.isFour,
    required this.firstText,
    required this.containerColor,
    required this.thirdText,
    required this.firstTextColor,
    required this.iconColor,
    required this.thirdTextColor,
    required this.secondText,
    required this.secondTextColor,
    required this.fourthTextColor,
    required this.fourthText,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(360, 690),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                colorContainer(containerColor),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: DynamicFontSize(
                      label: firstText, fontSize: 14.sp, color: firstTextColor),
                ),
              ],
            ),
            DynamicFontSize(
              label: secondText,
              fontSize: 12.sp,
              color: secondTextColor,
            ),
          ],
        ),
        VerticalSpace(15.h),
        isFour
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DynamicFontSize(
                    label: thirdText,
                    fontSize: 14.sp,
                    color: thirdTextColor,
                  ),
                  DynamicFontSize(
                    label: fourthText,
                    fontSize: 14.sp,
                    color: fourthTextColor,
                  ),
                  Icon(Icons.arrow_forward_ios_sharp, color: iconColor)
                ],
              )
            : FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DynamicFontSize(
                      label: thirdText,
                      fontSize: 14.sp,
                      color: thirdTextColor,
                    ),
                    Icon(Icons.arrow_forward_ios_sharp, color: iconColor)
                  ],
                ),
              )
      ],
    );
  }
}
