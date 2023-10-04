import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.greenColor,
    ),
    scaffoldBackgroundColor: AppColors.blueColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.greenColor,
      foregroundColor: AppColors.blueColor,
      fixedSize: const Size(1000, 56),
      textStyle: const TextStyle(fontSize: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    )));
