import 'package:flutter/material.dart';
import 'package:taskati/core/core.dart';

TextStyle getTitleTextStyle({double? fontSize, Color? color,FontWeight? weight}) {
  return TextStyle(
    fontSize: fontSize ?? 25, // Use the provided fontSize or default to 30
    fontWeight: weight ?? FontWeight.normal,// Use the provided FontWeight or default to bold
    color: color ?? appColor.primaryColor, // Use the provided color or default
  );
}
TextStyle getSmallTextStyle({double? fontSize, Color? color,FontWeight? weight}) {
  return TextStyle(
    fontSize: fontSize ?? 16, // Use the provided fontSize or default to 30
    fontWeight: weight ?? FontWeight.bold,// Use the provided FontWeight or default to bold
    color: color ?? appColor.buttonColor, // Use the provided color or default
  );
}
TextStyle getBodyTextStyle({double? fontSize, Color? color,FontWeight? weight}) {
  return TextStyle(
    fontSize: fontSize ?? 30, // Use the provided fontSize or default to 30
    fontWeight: weight ?? FontWeight.normal,// Use the provided FontWeight or default to bold
    color: color ?? appColor.primaryColor, // Use the provided color or default
  );
}
