

import 'package:flutter/material.dart';

Widget colorContainer(Color circleColor){

  return Container(
    height: 8,
    width: 8,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: circleColor
    ),
  );

}