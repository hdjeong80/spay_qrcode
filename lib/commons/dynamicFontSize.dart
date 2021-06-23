import 'package:flutter/material.dart';

class DynamicFontSize extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color? color;
  final bool isBold;
  final bool isAlignCenter;
  final double? lineHeight;
  final bool isUnderline;
  final FontWeight fontWeight;
  final double letterSpacing;
  DynamicFontSize({
    required this.label,
    required this.fontSize,
    this.isAlignCenter = true,
    this.isBold = false,
    this.isUnderline = false,
    this.lineHeight,
    this.letterSpacing = 0.5,
    this.fontWeight = FontWeight.bold,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: isAlignCenter ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        letterSpacing: letterSpacing,
        height: lineHeight,
        decoration:
            isUnderline ? TextDecoration.underline : TextDecoration.none,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
