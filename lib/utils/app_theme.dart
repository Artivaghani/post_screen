
import 'config_packages.dart';

class AppTheme {
  static final light = ThemeData.light().copyWith(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.secondaryColor,
      iconTheme: const IconThemeData(color: AppColors.greyColor),
      cardColor: AppColors.cardColor,
      hintColor: AppColors.greyColor,
      dividerColor: AppColors.deviderColor,
      textTheme: TextTheme(
          headlineLarge: getTextStyle(AppColors.primaryColor, FontDimen.dimen20,
              fontWeight: FontWeight.w700),
          headlineMedium: getTextStyle(
              AppColors.primaryColor, FontDimen.dimen16,
              fontWeight: FontWeight.w700),
          headlineSmall: getTextStyle(AppColors.primaryColor, FontDimen.dimen14,
              fontWeight: FontWeight.w700),
          bodyLarge: getTextStyle(AppColors.greyColor, FontDimen.dimen16,
              fontWeight: FontWeight.w500),
          bodyMedium: getTextStyle(AppColors.greyColor, FontDimen.dimen14,
              fontWeight: FontWeight.w500),
          bodySmall: getTextStyle(AppColors.greyColor, FontDimen.dimen12,
              fontWeight: FontWeight.w500),
          labelLarge: getTextStyle(AppColors.lableColor, FontDimen.dimen16,
              fontWeight: FontWeight.w500),
          labelMedium: getTextStyle(AppColors.lableColor, FontDimen.dimen14, fontWeight: FontWeight.w500),
          labelSmall: getTextStyle(AppColors.lableColor, FontDimen.dimen12, fontWeight: FontWeight.w500),
          // titleLarge: getTextStyle(AppColors.greyColor, FontDimen.dimen18, fontWeight: FontWeight.w500),
          // titleMedium: getTextStyle(AppColors.secondaryColor, FontDimen.dimen16, fontWeight: FontWeight.w500),
          titleSmall: getTextStyle(AppColors.greyColor, FontDimen.dimen12, fontWeight: FontWeight.w400)));

  
}

TextStyle getTextStyle(Color color, double size, {FontWeight? fontWeight}) =>
    TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        letterSpacing: 0.3,
        height: 1.2,
        fontFamily: 'regular');
