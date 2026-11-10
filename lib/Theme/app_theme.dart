import 'package:evently_app/Theme/app_colors.dart';
import 'package:evently_app/common/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      titleTextStyle: AppTextStyles.styleS22W400(color: AppColors.darkThemeMainColor),
      backgroundColor: AppColors.lightThemeBgColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.ligtThemeMainColor),
    ),
    scaffoldBackgroundColor: AppColors.lightThemeBgColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.ligtThemeMainColor,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      displayLarge: AppTextStyles.styleS22W700(),
      displayMedium: AppTextStyles.styleS20W700(),
      displaySmall: AppTextStyles.styleS18W700(),

      headlineLarge: AppTextStyles.styleS22W600(),
      headlineMedium: AppTextStyles.styleS20W600(),
      headlineSmall: AppTextStyles.styleS18W600(),

      titleLarge: AppTextStyles.styleS22W500(),
      titleMedium: AppTextStyles.styleS20W500(),
      titleSmall: AppTextStyles.styleS18W500(),

      bodyLarge: AppTextStyles.styleS22W400(),
      bodyMedium: AppTextStyles.styleS20W400(),
      bodySmall: AppTextStyles.styleS18W400(),

      labelLarge: AppTextStyles.styleS18W400(),
      labelMedium: AppTextStyles.styleS16W400(),
      labelSmall: AppTextStyles.styleS14W400(),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      titleTextStyle: AppTextStyles.styleS22W400(color: AppColors.darkThemeMainColor),
      backgroundColor: AppColors.darkThemeBgColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.darkThemeMainColor),
    ),
    scaffoldBackgroundColor: AppColors.darkThemeBgColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.darkThemeMainColor,
      brightness: Brightness.dark,
    ),
  textTheme: TextTheme(
      displayLarge: AppTextStyles.styleS22W700(color: AppColors.darkThemeTextColor),
      displayMedium:AppTextStyles.styleS20W700(color: AppColors.darkThemeTextColor),
      displaySmall: AppTextStyles.styleS18W700(color: AppColors.darkThemeTextColor),

      headlineLarge: AppTextStyles.styleS22W600(color: AppColors.darkThemeTextColor),
      headlineMedium:AppTextStyles.styleS20W600(color: AppColors.darkThemeTextColor),
      headlineSmall: AppTextStyles.styleS18W600(color: AppColors.darkThemeTextColor),

      titleLarge: AppTextStyles.styleS22W500(color: AppColors.darkThemeTextColor),
      titleMedium:AppTextStyles.styleS20W500(color: AppColors.darkThemeTextColor),
      titleSmall: AppTextStyles.styleS18W500(color: AppColors.darkThemeTextColor),

      bodyLarge: AppTextStyles.styleS22W400(color: AppColors.darkThemeTextColor),
      bodyMedium:AppTextStyles.styleS20W400(color: AppColors.darkThemeTextColor),
      bodySmall: AppTextStyles.styleS18W400(color: AppColors.darkThemeTextColor),

      labelLarge: AppTextStyles.styleS18W400(color: AppColors.darkThemeTextColor),
      labelMedium:AppTextStyles.styleS16W400(color: AppColors.darkThemeTextColor),
      labelSmall: AppTextStyles.styleS14W400(color: AppColors.darkThemeTextColor),
    ),
  );
}
