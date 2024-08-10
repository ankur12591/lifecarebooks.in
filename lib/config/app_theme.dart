import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_constants.dart';

final appTheme = ThemeData(
  primaryColor: AppColors.colorPrimary,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: AppConstants.sourceSansPro,
  textTheme: const TextTheme(
    bodySmall: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: AppColors.purpleC4),
    labelLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.white),
    titleSmall: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        letterSpacing:2.0,
        color: AppColors.purpleC4),
    bodyMedium: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: AppColors.colorPrimary),
    headlineSmall: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: AppColors.purpleC4),
    headlineLarge: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.w700,
        color: AppColors.purpleC4),
  ),
);
