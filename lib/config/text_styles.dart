import 'package:flutter/material.dart';
import 'package:book_nest_life_care/config/app_colors.dart';

const String fontFamilyDMSans = "DMSans";
const String fontFamilyLato = "Lato";
const String fontFamilySegoeUI = "SegoeUI";

TextStyle dmSansText(double fontSize,
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    TextOverflow? textOverflow,
    String? fontFamily,
    Color? color = AppColors.black2E,
    bool hasUnderLine = false,
    double? height}) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      height: height ?? 1.2,
      overflow: textOverflow ?? TextOverflow.visible,
      fontWeight: fontWeight,
      decoration: hasUnderLine ? TextDecoration.underline : TextDecoration.none,
      fontFamily: fontFamily);
}

TextStyle latoText(double fontSize,
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    TextOverflow? textOverflow,
    String? fontFamily,
    Color? color = AppColors.black2E,
    bool hasUnderLine = false,
    double? height}) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      height: height ?? 1.2,
      overflow: textOverflow ?? TextOverflow.visible,
      fontWeight: fontWeight,
      decoration: hasUnderLine ? TextDecoration.underline : TextDecoration.none,
      fontFamily: fontFamily);
}

TextStyle h8(
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    bool hasUnderLine = false,
    Color? color = AppColors.black2E}) {
  return latoText(8,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}
TextStyle h10(
    {BuildContext? context,
      FontWeight fontWeight = FontWeight.w400,
      bool hasUnderLine = false,
      Color? color = AppColors.black2E}) {
  return latoText(10,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}

TextStyle h12(
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    bool hasUnderLine = false,
    Color? color = AppColors.black2E}) {
  return latoText(12,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}

TextStyle h14(
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    bool hasUnderLine = false,
    Color? color = AppColors.black2E}) {
  return latoText(14,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}

TextStyle h16(
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    bool hasUnderLine = false,
    Color? color = AppColors.black2E}) {
  return latoText(16,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}

TextStyle h18(
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    bool hasUnderLine = false,
    Color? color = AppColors.black2E}) {
  return latoText(18,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}

TextStyle h20(
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    bool hasUnderLine = false,
    Color? color = AppColors.black2E}) {
  return latoText(20,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}

TextStyle h22(
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    bool hasUnderLine = false,
    Color? color = AppColors.black2E}) {
  return latoText(22,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}

TextStyle h24(
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    bool hasUnderLine = false,
    Color? color = AppColors.black2E}) {
  return latoText(24,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}

TextStyle h28(
    {BuildContext? context,
      FontWeight fontWeight = FontWeight.w400,
      bool hasUnderLine = false,
      Color? color = AppColors.black2E}) {
  return latoText(28,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}

TextStyle h30(
    {BuildContext? context,
      FontWeight fontWeight = FontWeight.w400,
      bool hasUnderLine = false,
      Color? color = AppColors.black2E}) {
  return latoText(30,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}

TextStyle h48(
    {BuildContext? context,
    FontWeight fontWeight = FontWeight.w400,
    bool hasUnderLine = false,
    Color? color = AppColors.black2E}) {
  return latoText(48,
      context: context,
      fontWeight: fontWeight,
      fontFamily: fontFamilyLato,
      hasUnderLine: hasUnderLine,
      color: color);
}
