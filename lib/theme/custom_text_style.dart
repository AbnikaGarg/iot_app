import 'package:iot_application1/theme/themeController.dart';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  static Color lightTextColor= Color.fromRGBO(164, 164, 164, 1);
  static ThemeData get theme => Get.theme;
  static ThemeController _themeController = Get.find();

  ///For Home page
  static get titleSmallDMSansCount => theme.textTheme.titleSmall!.copyWith(
    fontSize: 16.fSize,
    color: PrimaryColors().pureWhite
  );
  static get createHomeTitleLargeDMSans =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get homeTitleSmallDMSans =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get homeTitleLargeDMSans =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
       
      );
      static get homeTitleLargeOrangeDMSans =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.orangeNormal,
      );
  static get homeTitleLarge2DMSans =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get homeNavBarTextDMSans =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );

  ///For Rooms
  static get homeTitleLargeDMSansRed =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
        color: Colors.red
      );
  static get homeTitleLargeDMSansGreen =>
      theme.textTheme.titleSmall!.copyWith(
          fontSize: 17.fSize,
          fontWeight: FontWeight.w600,
          color: Colors.green
      );

  // Headline text style
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.pureWhite,
      );
  // Label text style
  static get labelLargeDMSansGray800 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.pureWhite,
      );

  static get labelLargeDMSansWhiteA700 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.pureWhite,
      );

  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Title text style
  static get titleSmallDMSans => theme.textTheme.titleSmall!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleSmallDMSansSub => theme.textTheme.titleSmall!.copyWith(
    fontSize: 18.fSize,
  );

  static get titleSmallDMSansSubForCreateHome => theme.textTheme.titleSmall!.copyWith(
    fontSize: 18.fSize,
    color: PrimaryColors().black900
  );
  static get titleSmallDMSansBluegray900 =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansBluegray90001 =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansBluegray90001After =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
        color: PrimaryColors().orangeNormal
      );
  static get errorTitleSmallDMSansBluegray90001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.errorRed,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansErrorContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
      );
  static get titleSmallDMSansMedium =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansOnError =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeDMSans =>
      theme.textTheme.titleSmall!.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.bold,
      );
}

extension on TextStyle {
  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }
}
