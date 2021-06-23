import 'package:flutter/material.dart';

import 'dynamicFontSize.dart';

customAppBar(
    String text,
    double fontSize, double arrowSize, bool hasIcon, ){
  return AppBar(
    title: DynamicFontSize(
      label: text,
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(17, 17, 17, 1),

    ),
    centerTitle: true,
    elevation: 0,

    leading: hasIcon ? Icon(Icons.arrow_back_ios_outlined, color: Colors.black,
      size: arrowSize,) : null,
    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
  );
}
